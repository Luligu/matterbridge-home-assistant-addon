# Migration

## Interim step: replace `addons` with `local_apps` at the same path

### Why

- It removes the Supervisor warning "uses legacy map type 'addons'; use 'local_apps' instead".
- `local_apps` mounts the same host folder (the Supervisor local apps folder) as `addons` did. With `path: /addons` the container still sees it at `/addons`, so `HOME_DIR=/addons/matterbridge` keeps working.
- No image change, no run script change, no data copy: only config.yaml changes, so it is easy to revert.

### What it does not change

- The data is still **not included in the app backup** (that needs the `app_config` move below).
- The data still survives an uninstall with "remove data".

### Change (one release, together with the legacy app)

`config.yaml` — replace `addons:rw` with:

```yaml
map:
  - type: local_apps
    read_only: false
    path: /addons
```

- Requires Supervisor **2026.07.1** or later (see Requirement below): an older Supervisor drops the app from the store.
- Use the object form with `path: /addons`, never the bare `local_apps:rw` string (an older Supervisor silently skips it and the data is not mounted).
- Bump `version:`, add the CHANGELOG entry, and note in README.md and DOCS.md that Supervisor 2026.07.1 or later is required.
- Test: the app starts, plugins, pairings and certificates are there, no "legacy map type" warning in the Supervisor log.

### Effect on the later move

Step 2 below then only adds the `app_config` entry and switches the `local_apps` entry to `read_only: true`. The `/addons` path and `OLD_HOME_DIR` stay the same.

## Move the Matterbridge data from `addons` to `app_config`

### Why

- Before the interim step the app maps `addons:rw` (after it `local_apps` at `/addons`), and the image keeps all the Matterbridge data (`Matterbridge` plugins, `.matterbridge` storage, `.mattercert` certification) in `/addons/matterbridge`.
- That folder is the Supervisor local apps folder: it is **not included in the app backup**.
- The `addons` map type is deprecated since Supervisor 2026.07 (the Supervisor logs "uses legacy map type 'addons'; use 'local_apps' instead").
- The `app_config` map type mounts a folder reserved to this app (host `addon_configs/<id>_matterbridge`) at `/config`. It is **included in the app backup** and restored with it, and it stays visible to the users (Samba, File editor).
- Trade-off: the `app_config` folder is **deleted when the user uninstalls the app with the "remove data" option**. That is why the app uses `addons` today: the local apps folder survives an uninstall, so a reinstall finds the pairings, certificates and plugins again. After the move, an uninstall with "remove data" loses them unless the user has an app backup. DOCS.md must warn about this.

### Requirement

- Supervisor **2026.07.1** or later: it is the first release that knows `app_config` and `local_apps`.
- There is no config.yaml key for a minimum Supervisor version (`homeassistant:` is the minimum Core version).
- An older Supervisor cannot parse the new config: it drops the app from the store, the installed version keeps running with `addons:rw` (no data loss), and a repair issue suggests removing the app.
- Never use the bare `local_apps:rw` string: an older Supervisor silently skips it, still offers the update, and the data ends up not mounted (lost on the next update).

### Steps (one release, together with the legacy app)

1. **Image** (matterbridge repo, `docker/rootfs/etc/s6-overlay/s6-rc.d/matterbridge/run`, used by `Dockerfile.s6-rc` and `Dockerfile.s6-rc-legacy`):
   - set `HOME_DIR=/config`;
   - before starting Matterbridge, migrate once: if `/config/.matterbridge` does not exist and `/addons/matterbridge` exists, run `cp -a /addons/matterbridge/. /config/` and log it;
   - leave `/addons/matterbridge` untouched as a fallback;
   - build and push the image with the new app version tag.

   Changes to the run script (replace the `HOME_DIR` line, and add the migration block before `# Install matterbridge (first run only)`):

   ```bash
   # Define the base directory for Matterbridge (app config folder, included in the app backup)
   HOME_DIR=/config

   # Previous base directory (Supervisor local apps folder, not included in the app backup)
   OLD_HOME_DIR=/addons/matterbridge

   # Migrate the data from the previous base directory (once).
   # The marker is written only after a complete copy, so an interrupted copy is retried on the next start.
   # The previous directory is mounted read-only and left untouched as a fallback.
   MIGRATION_MARKER="$HOME_DIR/.migrated_from_addons"
   if [ ! -f "$MIGRATION_MARKER" ] && [ -d "$OLD_HOME_DIR/.matterbridge" ]; then
     echo "📦 Migrating Matterbridge data from $OLD_HOME_DIR to $HOME_DIR..."
     cp -a "$OLD_HOME_DIR/." "$HOME_DIR/"
     touch "$MIGRATION_MARKER"
     echo "📦 Migration complete. $OLD_HOME_DIR is left untouched."
   fi
   ```

   The rest of the script already uses `$HOME_DIR` (plugins, storage, certificates, `--homedir` and the lock file cleanup), so nothing else changes.

2. **config.yaml** — replace the `map` (`addons:rw`, or the interim `local_apps` entry) with:

   ```yaml
   map:
     - type: app_config
       read_only: false
     - type: local_apps
       read_only: true
       path: /addons
   ```

   `local_apps` is mounted read-only at the old path only to copy the old data.

3. **Optional** — add `backup_exclude` (for example `*/node_modules/*`) if local plugin folders under `Matterbridge/` make the backups too big.

4. **Release** — bump `version:`, add the CHANGELOG entry, and update README.md and DOCS.md:
   - the data is now in the app config folder and included in the app backup;
   - Supervisor 2026.07.1 or later is required; if the app disappears from the store, update the Supervisor.
   - uninstalling with "remove data" now deletes the Matterbridge data (pairings, certificates, plugins): make an app backup first.

5. **Test on a real Home Assistant** before publishing:
   - the start log shows the migration and Matterbridge using `/config`;
   - plugins, pairings and certificates are all there;
   - after a restart the devices are still paired;
   - an app backup contains the Matterbridge data, and restoring it works;
   - no "legacy map type" warning in the Supervisor log.

6. **Later release** — remove the `local_apps` entry from `map` once the migration has been out long enough.
   - Remove the migration block from the run script in the same release.
   - The old `/addons/matterbridge` folder stays on disk (nothing removes it): the release notes can tell the users they may delete it.

### Notes

- Matter pairings and certificates live under the home folder, so copying the folder keeps the same identity.
- The saved plugin paths are absolute, but the plugin manager re-resolves a missing path to the global modules folder or to `Matterbridge/<plugin name>`.
- A downgrade to a version before the migration uses the old `/addons/matterbridge` copy: pairings made after the migration are missing there.
- Backups made before the migration do not contain the Matterbridge data (same as today).
- Until the later release, an uninstall with "remove data" also deletes the marker in `/config`, while `/addons/matterbridge` is never touched (read-only mount, and the uninstall does not clean `local_apps`). The next install copies the old data again: Matterbridge starts with the identity, plugins and pairings from before the migration, and everything changed after the migration is missing. Deleting `/addons/matterbridge` by hand gives an empty bridge instead.
