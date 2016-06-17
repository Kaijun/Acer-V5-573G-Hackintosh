Acer V5-573G Hackintosh
=======================

> All my hackintosh stuffs of Acer V5-573G

##Releases

**[Click to Download Releases](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/releases)**

**‼️ Notice:** You need to modify the **Memory Section** of `SMBIOS` in the config.plist to fit your own specs! Since El Capitan, we have to define this section explicitly, otherwise it will cause kernel panic.
My own memory works in 2 channels, which means i need set two memory entries for slot `0` and `2` and the slot count for `4`, the reason:
>Set the Size and Frequency for each of the two memory entries to match your installed RAM. If you know the vendor, part, and serial for your memory you can edit those fields too (if not, just leave them as is). Leave the two memory entries set for slots 0 and 2 and the slot count set for 4 even though the board only has two slots (Clover wants to see slots 0 and 2 configured to treat the memory as dual-channel).

**Versions:**
- 18.06.2016: Clover-3556-El-Capitan-18062016
  * fix USB (Rename EHCI->EH01, FakePCIID_XHCIMux.kext, USBInjectAll.kext)
  * new DSDT/SSDTs from Bios 2.30, new [DSDT repo](https://github.com/Kaijun/Acer-V5-573g-DSDT)

- 17.06.2016: Clover-3556-El-Capitan-17062016


## Branches:
- [el-capitan-10.11---i7-4500U](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/tree/el-capitan-10.11---i7-4500U) maintained by [michaelspeed](https://github.com/michaelspeed)
- [el-capitan-10.11---i5-4200U-TouchScreen](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/tree/el-capitan-10.11---i5-4200U-TouchScreen) maintained by [Silveryard](https://github.com/Silveryard)
- archieve branches: check yourself 😄

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
