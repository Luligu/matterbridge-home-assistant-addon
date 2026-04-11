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

[![Open your Home Assistant instance and show the dashboard of an app.](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?repository_url=https%3A%2F%2Fgithub.com%2FLuligu%2Fmatterbridge-home-assistant-addon&addon=246dd49f_matterbridge)

The official Matterbridge Home Assistant Application (formerly known as add-on) allows you to run [Matterbridge](https://matterbridge.io) with the Home Assistant Supervisor.

All Matterbridge features work correctly in the official application.

The Matterbridge storage and the Matterbridge plugins storage persist when you update, restart or uninstall and install again the application.

When you start or restart the application, Matterbridge will reload all plugins that were previously registered (it takes time so be patient).

The Application can run on `arm64` and `amd64` archs (`armv7` arch has been [deprecated](https://www.home-assistant.io/blog/2025/05/22/deprecating-core-and-supervised-installation-methods-and-32-bit-systems) by Home Assistant and is not available on the manifest of modern Node.Js 24 images).

The image (luligu/matterbridge:s6-rc) is built on **Debian 13** (trixie-slim) with **Node.js 24** and integrates the **s6-rc overlay** system.

Visit the [Documentation page](DOCS.md) for more information.
