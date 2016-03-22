MarinePi
========

Ansible scripts to setup a Raspberry Pi for boat use, providing access to various data sources on board both via wired and wireless connections. SignalK-node server, hotspot, Internet connectivity etc

Usage
=====

1. Initialize a memory card with the latest [Raspbian Jessie Lite](https://www.raspberrypi.org/downloads/raspbian/)
1. Connect the to-be-provisioned Raspberry Pi to the local network and find out it's IP address
1. Run `./firstrun.sh <ip-to-your-raspi>` to push your SSH key & do the initial setup

Todo
====
- [ ] make generic, remove config that is specific to one particular project
- [ ] add gsm connectivity

 Later
- [ ] "MapProxy" cache setup with seeding

Credits
=======

Fork of [original project](https://github.com/hkapanen/sailpi) with the intention of continuing work in this repo.
