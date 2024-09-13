# <img src="https://github.com/Luligu/matterbridge/blob/main/frontend/public/matterbridge%2064x64.png" alt="Matterbridge Logo" width="64px" height="64px">&nbsp;&nbsp;&nbsp;Matterbridge

[![npm version](https://img.shields.io/npm/v/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![npm downloads](https://img.shields.io/npm/dt/matterbridge.svg)](https://www.npmjs.com/package/matterbridge)
[![Docker Version](https://img.shields.io/docker/v/luligu/matterbridge?label=docker%20version&sort=semver)](https://hub.docker.com/r/luligu/matterbridge)
[![Docker Pulls](https://img.shields.io/docker/pulls/luligu/matterbridge.svg)](https://hub.docker.com/r/luligu/matterbridge)
![Node.js CI](https://github.com/Luligu/matterbridge/actions/workflows/build.yml/badge.svg)

[![power by](https://img.shields.io/badge/powered%20by-matter--history-blue)](https://www.npmjs.com/package/matter-history)
[![power by](https://img.shields.io/badge/powered%20by-node--ansi--logger-blue)](https://www.npmjs.com/package/node-ansi-logger)
[![power by](https://img.shields.io/badge/powered%20by-node--persist--manager-blue)](https://www.npmjs.com/package/node-persist-manager)

---

If you like this project and find it useful, please consider giving it a star on GitHub at https://github.com/Luligu/matterbridge-home-assistant-addon and sponsoring it.


# Matterbridge Home Assistant Add-on

This repository contains the Matterbridge Official Home Assistant Add-on. 

It allows you to run Matterbridge as an Home Assistant Add-on.

All Matterbridge features are correctly working in the official add-on (e.g. you can update Matterbridge itself or the plugins without issues). 

The Matterbridge storage and the Matterbridge plugins storage persist when you update the Add-on, rebuild or restart it. 

When you build/rebuild the add-on, Matterbridge will reload all plugins that were registered (it takes time so be patient).

The Add-on can run on arm64, amd64 armv7 archs. The image is build on Debian 12 (bookworm-slim) with Nodejs 22.

## How to install

From your **Home Assistant** web page, go to **Settings**, select **Add-ons** and click on the **ADD-ON STORE** button.

In the upper right corner click on the **three dots menu**, select **Repositories** and paste this link

```
https://github.com/Luligu/matterbridge-home-assistant-addon
```

then click on **ADD**.

You should now see your Matterbridge add-on in the add-on store and be able to **INSTALL** it.

Be patient cause it can takes a few minutes.

Enable **Start on boot**, **Watchdog** and **Auto update**.

Click on **BUILD** or **REBUILD**.

To open the Matterbridge frontend click on **OPEN WEB UI**.

## How to configure the mdns

Since Home Assistant exposes a lot of interfaces to the containers, is better to set the matter mdns interface in the Matterbridge Settings page.

![image](https://github.com/user-attachments/assets/bdaa91ea-4c87-4aeb-9cec-dd99be0ec8dc)

You can get the correct interface name from the Network page in the settings of Home Assistant.

In this case the correct name is end0.

![image](https://github.com/user-attachments/assets/1c09c1a4-41b5-41ed-924e-1f1086140b50)

