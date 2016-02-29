Acer V5-573G Hackintosh
=======================

> All my hackintosh stuffs of Acer V5-573G

## News :)

[michaelspeed](https://github.com/michaelspeed) has contributed his new Clover and Configuration for El Capitan in [Issue #27](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/pull/27). I merged it into the branch [el-capitan-10.11---i7-4500U](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/tree/el-capitan-10.11---i7-4500U). Thanks!

Problem when updating 10.10.2: Graphical lag! [Solution by Majkwin](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues/9#issuecomment-71815507)
I would also upload my Clover.zip later 

##Overview

**Working**

- HD4400 graphic card
- Disabled NVIDA Geforce graphic card under DSDT
- Sounds: AppleHDA
	* Legacy Method (install the patched Kext)
	* New Method (Auto Patch even the OS X updates, needn't to install patched Kext any more)
- TouchPad: VoodooPS2Controller
- Brightness
- SpeedStepping(without Turbo Boost)
- Sleep
- Shutdown
- USB(to be test)

**Not Working**
- internal Wifi card, it must be replaced(buying suggestions see below)
  - i'm using `BCM94322HM8L` which doesn't contain the BlueTooth module.
  - `BCM943225HMB` with BlueTooth which is suggested by [@virusak](https://github.com/virusak) in [Issue #4](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues/4#issuecomment-56149694).
- to be tested: accidentally shutdown/sleep problem
  - description && ***temporary solution***: have a look at [Issue #6](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues/6)

=======

##Installation Guide

A brief guide to the installation wrote by [@Majkwin](https://github.com/Majkwin) plz see [Issue #7](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues/7). Thank him!

=======

##Feedback
Plese do not hesitate to contact me by using the **[issue function](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues)**, if you have any questions about the setup.

##License

The source code is released under [GPL v3](http://www.gnu.org/copyleft/gpl.html) or (at your option) any later version.
