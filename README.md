# esx_adminzone based on esx_adminzone
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nick-perry14/esx_adminzone)](#)
[![Maintenance](https://img.shields.io/maintenance/yes/2021)](#)
[![Repository Views](https://komarev.com/ghpvc/?username=nick-perry14-esx-admin-zone&label=Repository+Hits&style=flat&color=brightgreen)](#)
[![GitHub all releases](https://img.shields.io/github/downloads/nick-perry14/esx_adminzone/total)](https://github.com/nick-perry14/esx_adminzone/releases)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/nick-perry14/esx_adminzone)](https://github.com/nick-perry14/esx_adminzone/releases/latest)
[![GitHub issues](https://img.shields.io/github/issues/nick-perry14/esx_adminzone)](https://github.com/nick-perry14/esx_adminzone/issues)

## About
### Admin Zones
This is a simple admin project that allows users of a specific group to set an "Admin Zone".  These zones automatically:
- Disable Firing (Only inside the zone)
- Disable Meele (Only inside the zone)
- Notifies player upon entering/leaving zone
- Draws a notification on the screen
- Adds a ***TEMPORARY*** blip that shows on users map.  (Additional info below)
- Warns players who are speeeding to slow down.

Upon removing the zones, the resource:
- Removes the temporary blip
- Re-Enables shooting and violence
- Notifies players of zone clear

## Commands
- /setzone - Enables the admin zone around the admin
- /clearzone - Clears the admin zone of the admin.
