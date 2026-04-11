# <img src="https://matterbridge.io/assets/matterbridge.svg" alt="Matterbridge Logo" width="32px" height="32px"> &nbsp;&nbsp;&nbsp; Matterbridge Application Changelog

All notable changes to this project will be documented in this file.

If you like this project and find it useful, please consider giving it a star on [GitHub](https://github.com/Luligu/matterbridge-home-assistant-addon) and sponsoring it.

<a href="https://www.buymeacoffee.com/luligugithub"><img src="https://matterbridge.io/assets/bmc-button.svg" alt="Buy me a coffee" width="120"></a>

# Changelog

## 2026.4.2 - 2026-04-10

- Updated matterbridge to [3.7.3](https://matterbridge.io/CHANGELOG.html#373-2026-04-10).
- Updated matterbridge-hass to [1.1.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#110---2026-04-10).

## 2026.4.1 - 2026-04-02

- Updated matterbridge to [3.7.2](https://matterbridge.io/CHANGELOG.html#372-2026-04-02).
- Updated matterbridge-hass to [1.0.12](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#1012---2026-04-02).

## 2026.3.4 - 2026-03-27

- Updated matterbridge to [3.7.1](https://matterbridge.io/CHANGELOG.html#371-2026-03-27).

## 2026.3.3 - 2026-03-20

- Updated matterbridge to [3.7.0](https://matterbridge.io/CHANGELOG.html#370-2026-03-19).
- Updated matterbridge-hass to [1.0.11](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#1011---2026-03-21).

## 2026.3.2 - 2026-03-13

- Updated matterbridge to [3.6.1](https://matterbridge.io/CHANGELOG.html#361-2026-03-13).
- Updated matterbridge-hass to [1.0.10](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#1010---2026-03-09).

## 2026.3.1 - 2026-03-06

- Updated matterbridge to [3.6.0](https://matterbridge.io/CHANGELOG.html#360-2026-03-06).
- Updated matterbridge-hass to [1.0.9](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#109---2026-03-06).

## 2026.2.6 - 2026-02-28

- Updated matterbridge to [3.5.6](https://matterbridge.io/CHANGELOG.html#356-2026-02-27).
- Updated matterbridge-hass to [1.0.8](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#108---2026-02-27).

## 2026.2.5 - 2026-02-20

- Updated matterbridge to [3.5.5](https://matterbridge.io/CHANGELOG.html#355-2026-02-20).
- Updated matterbridge-hass to [1.0.7](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#107---2026-02-19).

## 2026.2.4 - 2026-02-14

- Removed the build stage and use the ad hoc image built in the Matterbridge pipeline. This should contribute to reduce the backup size and time. Thanks [tronikos](https://github.com/tronikos).
- Updated matterbridge to [3.5.4](https://matterbridge.io/CHANGELOG.html#354-2026-02-13).

## 2026.2.3 - 2026-02-11

- Updated matterbridge-hass to [1.0.6](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#106---2026-02-10).
- Updated matterbridge-hass to [1.0.5](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#105---2026-02-07).

## 2026.2.2 - 2026-02-09

- Updated matterbridge to [3.5.3](https://matterbridge.io/CHANGELOG.html#353-2026-02-06).
- Updated matterbridge-hass to [1.0.4](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#104---2026-02-04).

## 2026.2.1 - 2026-02-03

- added **free memory** and **total memory** info in the Welcome message on start.
- added **Force update** configuration. Leave it active unless you have issue installing the new version from npm.

## 2026.1.3 - 2026-01-31

- fixed frontend port.

## 2026.1.2 - 2026-01-31

- updated matterbridge to [3.5.2](https://matterbridge.io/CHANGELOG.html#352-2026-01-31).

- added **luligu/matterbridge:s6-rc-base** as base image: the image is built on **Debian 13** (trixie-slim) with **Node.js 24** and integrates the **s6-rc overlay** system.

- added the **s6-rc overlay** system used by the Home Assistant Supervisor.

## 2026.1.1 - 2026-01-29

The application (formerly known as add-on) has been entirely redesigned:

- added a configuration page where you can set the binding address for the matterbridge frontend and choose whether to install the latest dev or the latest stable release of matterbridge

![Configuration](https://github.com/user-attachments/assets/b94aac2a-1dfc-4334-a4ec-c1165d8c7c83)

- added a welcome message with information about the image (from the Home Assistant frontend navigate to Settings -> System -> Logs and select Matterbridge Home Assistant Application)

![Welcome message](https://github.com/user-attachments/assets/cf1a092a-6d2b-49cf-a342-c5c62509d83d)

- the application always updates matterbridge with the latest stable or the latest dev on restart or rebuild

- the plugins are reinstalled with the latest dev or the latest stable, depending on what was running before the restart or rebuild

## 2.0.19 - 2026-01-25

- Updated matterbridge to [3.5.1](https://matterbridge.io/CHANGELOG.html#351-2026-01-24).
- Updated matterbridge-hass to [1.0.3](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#103---2026-01-23).

## 2.0.18 - 2026-01-22

- Updated matterbridge to [3.5.0](https://matterbridge.io/CHANGELOG.html#350-2026-01-20).
- Updated matterbridge-hass to [1.0.2](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#102---2026-01-20).

## 2.0.17 - 2026-01-12

- Updated matterbridge to [3.4.7](https://matterbridge.io/CHANGELOG.html#347-2026-01-12).

Also available the dev version of matterbridge and matterbridge-hass. Install matterbridge dev from the frontend 3 dots menu and matterbridge-hass@dev from Install plugin.

## 2.0.16 - 2026-01-02

- Updated matterbridge to [3.4.6](https://matterbridge.io/CHANGELOG.html#346-2026-01-02).

## 2.0.15 - 2025-12-31

- Updated matterbridge to [3.4.5](https://matterbridge.io/CHANGELOG.html#345-2025-12-27).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.14 - 2025-12-23

- Updated matterbridge to [3.4.4](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#344---2025-12-19).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.13 - 2025-12-16

- Updated matterbridge to [3.4.3](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#343---2025-12-12).
- Updated matterbridge-hass to [1.0.1](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#101---2025-12-12).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.12 - 2025-12-09

- Updated matterbridge to [3.4.2](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#342---2025-12-05).
- Updated matterbridge-hass to [1.0.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#100---2025-12-05).

If your system unit is FAHRENHEIT and you have any climate device, please install matterbidge-hass@dev from Install plugin.

The current dev of the plugin fixes a configuration issue for climate in FAHRENHEIT and also a possible issue with REST api connection that has been removed.

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.11 - 2025-12-04

- Updated matterbridge to [3.4.1](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#341---2025-12-01).
- Reduced sleep time to 2 seconds.

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.10 - 2025-11-27

- Updated matterbridge to [3.4.0](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#340---2025-11-26).
- There is this nice video on https://www.youtube.com/watch?v=06zzl7o_IqQ.

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.9 - 2025-11-17

- Updated matterbridge to [3.3.8](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#338---2025-11-15).
- Updated matterbridge to [3.3.7](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#337---2025-11-08).
- Updated matterbridge-hass to [0.5.1](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#051---2025-11-14).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.8 - 2025-11-03

- Updated matterbridge to [3.3.6](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#336---2025-11-01).
- Updated matterbridge to [3.3.5](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#335---2025-10-31).
- Updated matterbridge-hass to [0.5.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#050---2025-10-31).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.7 - 2025-10-29

- Updated matterbridge to [3.3.4](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#334---2025-10-24).
- Updated matterbridge to [3.3.3](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#333---2025-10-18).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.6 - 2025-10-16

- Updated matterbridge to [3.3.2](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#332---2025-10-13).
- Updated matterbridge to [3.3.1](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#331---2025-10-12).
- Updated matterbridge to [3.3.0](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#330---2025-10-03).
- Updated matterbridge-hass to [0.4.3](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#043---2025-10-16).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.5 - 2025-09-14

- Updated matterbridge to [3.2.7](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#327---2025-09-14).
- Updated matterbridge-hass to [0.4.2](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#042---2025-09-09).

A new release of the add-on will force the Supervisor to rebuild the container.

## 2.0.4 - 2025-09-03

- Updated matterbridge to [3.2.5](https://github.com/Luligu/matterbridge/blob/main/CHANGELOG.md#325---2025-09-02).
- Updated matterbridge-hass to [0.4.0](https://github.com/Luligu/matterbridge-hass/blob/main/CHANGELOG.md#040---2025-09-02).

**Please read the breaking changes in Hass plugin**.

A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.3 - 2025-08-29

- Updated Matterbridge to 3.2.4 and matterbridge-hass to 0.3.0. A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.2 - 2025-08-20

- Updated Matterbridge to 3.2.3. A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.1 - 2025-08-01

- Updated Matterbridge to 3.2.0. A new release of the add-on should force the Supervisor to rebuild the container.

## 2.0.0 - 2025-07-14

- Removed configuration and unnecessary parameters in config.json.
- Removed unnecessary parameters in run.sh.
- Removed unnecessary parameters in Dockerfile.
- Added CACHEBUST to Dockerfile to force a new build.
- Updated the README.md

## 1.0.10 - 2025-07-12

- Removed useless comments from Dockerfile.

## 1.0.9 - 2025-07-12

- Fixed logo.png and added badges to README.md.

## 1.0.8 - 2025-07-12

- Fixed matterbridge.svg.

## 1.0.7 - 2025-07-12

- Added changelog.

## 1.0.6 - 2025-07-12

- Changed structure to monorepo.

## 1.0.5 - 2024-12-05

- Update README.md

## 1.0.4 - 2024-09-22

- Refactor run.sh to keep the process running in the same container.
- Fixed matterbridge routes for download (will be in matterbridge v. 1.5.9)

## 1.0.3 - 2024-09-15

- Added fixed hostname.
- Added badge in the README.md to fast add the add-on (provided by Marcel van der Veldt).

## 1.0.2 - 2024-09-13

- Added Ingress and side panel (beta).

## 1.0.1 - 2024-09-10

- Added CHANGELOG.md.
- Update README.md.

## 1.0.0 - 2024-09-09

- Initial release of the Matterbridge Official Home Assistant add-on.
