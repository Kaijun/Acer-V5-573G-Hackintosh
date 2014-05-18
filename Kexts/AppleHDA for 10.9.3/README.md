How make AppleHDA work
=======================

1. Check if you have delete all the VoodooHDA Kexts (including `AppleHDADisabler`! That's important) 
2. First of all, install this Kext with KextUtility or any Kext-Installer that you want.
3. To enable this AppleHDA, you should do `one` of following steps:
    * by using the `DSDT` i provided
	* by setting `Clover` in following way:
	
	![Clover Setting](Clover-Setting.jpg "Clover Setting")
4. Restart and Check if it works