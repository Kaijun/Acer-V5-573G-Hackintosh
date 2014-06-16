Introduction of modified DSDT
=======================

* Inject ig-platform-id for enabling Intel HD4400
* Shut down the Nvdia Geforce Graphic Card
* Fix Brightness
* Fix Shutdown
* Add DSM for Device HDEF to make AppleHDA work (layout-id: 1 - 0x01, 0x00, 0x00, 0x00)
* Fix HPET (Which is essential to make sound work)
* Fix IRQs
* Fix SBUS
* Fix RTC
* **Delete the _PRW method in Device(HDEF)**, otherwise the laptop wakes automatically: wake reason: HDEF
* **Fix USB**: Delete all the USB parts in DSDT and let the native USB driver be in charge of controlling USB. 
	* ***Notice***: `DO NOT` install `GenericUSBXHCI.kext` and `DO NOT` use the boot flag `-defer_gux_usb2` anymore (see the configuration of Clover-2702).

