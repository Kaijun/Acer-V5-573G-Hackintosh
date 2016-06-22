
> @savvamitrofanov: yep , intel management engine uefi region. you can download firmware suitable for yours ME and tools for uefi shell from here http://www.win-raid.com/t596f39-Intel-Management-Engine-Drivers-Firmware-amp-System-Tools.html.
Just for me it solved all problems with shutdown/sleep/restart after long,heavy load on my haswell laptop Asus X200LA.

First of all, i would thank [@savvamitrofanov](https://github.com/savvamitrofanov) for this solution. https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues/6#issuecomment-225346907

### Why do I need to take risk to flash this firmware?
Updating Intel Management Engine Firmware will significantly improve the shutdown/sleep/restart behaviours of your laptop while running MacOS(Hacintosh), or even Windows 10. All Issues with shutdown/sleep/restart mentioned in https://github.com/Kaijun/Acer-V5-573G-Hackintosh/issues/6 will be fixed!

###Tutorial:

1. Download these 3 files. (Or download files on [`win-raid`](http://www.win-raid.com/t596f39-Intel-Management-Engine-Drivers-Firmware-amp-System-Tools.html) yourself: `Intel ME System Tools v9.5 r4`  and `Intel ME 9.5 Consumer 1.5MB Firmware v9.5.55.1948`)
2. Copy these 3 files to your favourite partition, I just copied it into my EFI partition easily which is the first partition.
3. Boot to Clover, you will see a small button named `boot into efi shell`.
4. run **`FS0:`** (depending on the partition you extracted your files in), notice the **colon** `:`, don't forget it!
5. run `MeInfo.efi`, check your current `FW Version`. (use PageUp, PageDown button to scroll)
6. run `FwUpdLcl.efi -F fw.bin` to flash the new firmware and wait till it finished.
7. Reboot and enter `efi shell` again, run `MeInfo.efi`, check if `FW Version` was successfully updated to `9.5.51948`
8. Enjoy!
