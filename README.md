MarinePi
========

Ansible scripts to setup a Raspberry Pi for boat use, providing access to various data sources on board both via wired and wireless connections. Features include
- Signal K node server with canboat
- wifi hotspot
- (marina) wifi access with routing
- 3/4G Internet connectivity with Huawei e3772
- VPN access
- various dynamic dns providers (inadyn, Route 53)
- read-only root partition

Usage
=====

1. Initialize a memory card with the latest [Raspbian Jessie Lite](https://www.raspberrypi.org/downloads/raspbian/)
1. Connect the to-be-provisioned Raspberry Pi to the local network and find out it's IP address
1. Run `./firstrun.sh <ip-of-your-raspi>` to push your SSH key & do the initial setup (change password for user `pi`, copy ssh keys)
1. Edit configuration in `example-boat.yml` to match your environment and fill in your hotspot details
1. Run `./provision.sh <ip-of-your-raspi> example-boat.yml` to provision the software & configurations for the roles in example-boat.yml.

Credits
=======

Fork of [original project](https://github.com/hkapanen/sailpi) with the intention of continuing work in this repo.
