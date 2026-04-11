# <img src="https://matterbridge.io/assets/matterbridge.svg" alt="Matterbridge Logo" width="32px" height="32px"> &nbsp;&nbsp;&nbsp; Matterbridge Home Assistant Application

[![npm version](https://img.shields.io/npm/v/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![npm downloads](https://img.shields.io/npm/dt/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![Docker Version](https://img.shields.io/docker/v/luligu/matterbridge/latest?label=docker%20version)](https://hub.docker.com/r/luligu/matterbridge)
[![Docker Pulls](https://img.shields.io/docker/pulls/luligu/matterbridge?label=docker%20pulls)](https://hub.docker.com/r/luligu/matterbridge)
![Node.js CI](https://github.com/Luligu/matterbridge/actions/workflows/build.yml/badge.svg)
![CodeQL](https://github.com/Luligu/matterbridge/actions/workflows/codeql.yml/badge.svg)
[![codecov](https://codecov.io/gh/Luligu/matterbridge/branch/main/graph/badge.svg)](https://codecov.io/gh/Luligu/matterbridge)
[![styled with prettier](https://img.shields.io/badge/styled_with-Prettier-f8bc45.svg?logo=prettier)](https://github.com/prettier/prettier)
[![linted with eslint](https://img.shields.io/badge/linted_with-ES_Lint-4B32C3.svg?logo=eslint)](https://github.com/eslint/eslint)
[![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![ESM](https://img.shields.io/badge/ESM-Node.js-339933?logo=node.js&logoColor=white)](https://nodejs.org/api/esm.html)
[![matterbridge.io](https://img.shields.io/badge/matterbridge.io-online-brightgreen)](https://matterbridge.io)

[![powered by](https://img.shields.io/badge/powered%20by-matterbridge-blue)](https://www.npmjs.com/package/matterbridge)
[![powered by](https://img.shields.io/badge/powered%20by-matter--history-blue)](https://www.npmjs.com/package/matter-history)
[![powered by](https://img.shields.io/badge/powered%20by-node--ansi--logger-blue)](https://www.npmjs.com/package/node-ansi-logger)
[![powered by](https://img.shields.io/badge/powered%20by-node--persist--manager-blue)](https://www.npmjs.com/package/node-persist-manager)

![Supports aarch64 Architecture][aarch64-shield] ![Supports amd64 Architecture][amd64-shield] ![Uses s6-rc overlay][s6rc-shield]

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[s6rc-shield]: https://img.shields.io/badge/s6--rc%20overlay-yes-green.svg

---

If you like this project and find it useful, please consider giving it a star on [GitHub](https://github.com/Luligu/matterbridge-home-assistant-addon) and sponsoring it.

<a href="https://www.buymeacoffee.com/luligugithub"><img src="https://matterbridge.io/assets/bmc-button.svg" alt="Buy me a coffee" width="80"></a>

# Matterbridge Home Assistant Application

The official Matterbridge Home Assistant Application (formerly known as add-on) allows you to run [Matterbridge](https://matterbridge.io) with the Home Assistant Supervisor.

All Matterbridge features work correctly in the official application.

The Matterbridge storage and the Matterbridge plugins storage persist when you update, restart or uninstall and install again the application.

When you start or restart the application, Matterbridge will reload all plugins that were previously registered (it takes time so be patient).

The Application can run on `arm64` and `amd64` archs (`armv7` arch has been [deprecated](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems) by Home Assistant and is not available on the manifest of modern Node.Js 24 images).

The image (luligu/matterbridge:s6-rc) is built on **Debian 13** (trixie-slim) with **Node.js 24** and integrates the **s6-rc overlay** system.

Visit the [Documentation page](https://github.com/Luligu/matterbridge-home-assistant-addon/blob/main/DOCS.md) for more information.

# Changelogs

[App Changelog](https://github.com/Luligu/matterbridge-home-assistant-addon/blob/main/CHANGELOG.md)

[Matterbridge Changelog](https://matterbridge.io/CHANGELOG.html)

# YouTube

Here’s a nice video: https://www.youtube.com/watch?v=06zzl7o_IqQ.

# Matterbridge Home Assistant plugin

The ideal companion to the add-on is the [Matterbridge Home Assistant plugin](https://github.com/Luligu/matterbridge-hass/blob/main/README.md)

## How to install the application

Click here

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FLuligu%2Fmatterbridge-home-assistant-addon)

or from your **Home Assistant** web page, go to **Settings**, select **Apps** and click on the **Install app** button.

In the upper-right corner, click on the **three dots menu**, select **Repositories** and paste this link

```
https://github.com/Luligu/matterbridge-home-assistant-addon
```

then click on **ADD**.

You should now see your Matterbridge app in the app store and be able to **Install** it.

Be patient because it can take a few minutes.

Enable **Start on boot**, **Autoupdate** and **Show in sidebar**.

The Watchdog is not used because Matterbridge always restarts with the s6-rc overlay system.

Click on **Start**.

The first start (or a restart) on a Home Assistant Green takes around 2-3 minutes.

Starting Matterbridge the first time takes time because it will reload all plugins that were already registered.

To open the Matterbridge frontend click on **Open Web UI** or click on the sidebar Matterbridge icon.

You may be asked to install the Home Assistant Matter Server: confirm the default installation.

The app works perfectly with the beta of Matter Server (we use the same matter.js library).

This app has a configuration page where you can set the binding address for the matterbridge frontend and select to install the latest dev or the latest stable release of matterbridge.

![Configuration page](https://raw.githubusercontent.com/Luligu/matterbridge-home-assistant-addon/main/assets/configuration.png)

## Supervisor behavior

To avoid having any old version of matterbridge and plugins, always update the add-on when you are prompted to.

A restart of the application will update the Matterbridge version.

After updating or restarting the application, in the log you will see messages like this:

```
[18:16:13.122] [Matterbridge] Error parsing plugin matterbridge-example-accessory-platform. Trying to reinstall it from npm...
[18:16:16.167] [Matterbridge] Plugin matterbridge-example-accessory-platform reinstalled.
[18:16:16.190] [Matterbridge] Error parsing plugin matterbridge-example-dynamic-platform. Trying to reinstall it from npm...
[18:16:18.973] [Matterbridge] Plugin matterbridge-example-dynamic-platform reinstalled.
```

This is normal in this context and means that Matterbridge detected that the plugins are not present in the newly created container and will install them from npm using the latest stable version or the latest dev version.

If you were using a plugin installed from a tarball, you need to reinstall it manually.

If you were using a dev version of a plugin, it will be reinstalled with the latest dev version.

## How to configure the Matter mDNS

Since Home Assistant exposes a lot of interfaces to the containers, it is **mandatory** to set the **matter mdns interface** in the Matterbridge Settings page.

![Matterbridge settings](https://raw.githubusercontent.com/Luligu/matterbridge-home-assistant-addon/main/assets/settings.png)

You can get the correct interface name from the **Network Adapter** panel. From the Home Assistant frontend navigate to Settings -> System -> Network.

In this case the correct name is end0 but your system can have a different interface.

![Network configuration](https://raw.githubusercontent.com/Luligu/matterbridge-home-assistant-addon/main/assets/network.png)

## Security

During the installation you may see in the log a warning that looks scary, for example:

```text
npm warn deprecated glob@10.5.0: Old versions of glob are not supported, and contain widely publicized security vulnerabilities, which have been fixed in the current version. Please update. Support for old versions may be purchased (at exorbitant rates) by contacting i@izs.me
```

This warning does not come from Matterbridge code.

It is emitted by a transitive dependency (the `archiver` package) that pulls in an older `glob` version. Matterbridge does not depend on this version of `glob` directly.

In short: you can safely ignore this message; it is a dependency warning, not a Matterbridge vulnerability.
