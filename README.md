Acer V5-573G Hackintosh
=======================

> All my hackintosh stuffs of Acer V5-573G

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

- to be test: accidentally shutdown/sleep problem
  - description: if the laptop runs continually for a long time(maybe more than 2h?), then it will be unable to shut down or sleep(can't wake up from sleep).
  - ***temporary solution***: force the laptop to **sleep manually** after the start of your laptop. After the power light **turns orange**, then **wake the laptop up**. Then all the shutdown/sleep behavior will be normal. The phenomenon as the description won't appear again.  

=======

##Installation Guide

To Be Down.

=======

##Feedback
Plese do not hesitate to contact me by using the **[issue function](https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues)**, if you have any questions about the setup.

##License

The source code is released under [GPL v3](http://www.gnu.org/copyleft/gpl.html) or (at your option) any later version.
