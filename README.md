\# G90 Boot-Logo-Replacer


A simple Ports + ports_scripts based tool for the G90 handheld that allows direct replacement of the internal boot splash BMP files located in `/flash`.



Designed for:



\* EmuELEC hybrid G90 systems

\* Internal firmware asset installations

\* Pixel-OS / RoyMods-Advance customization workflows



\---



\# Features



\* Replaces:



&#x20; \* `logo.bmp`

&#x20; \* `logo_kernel.bmp`

&#x20; \* `logo_hdmi.bmp`

&#x20; \* `logo_kernel_hdmi.bmp`

&#x20; \* `loading-game.png`

\* Uses Ports launcher system

\* No firmware reflashing required

\* Works directly from SD card's ports, ports_scripts and backup folder setup


\--



\# Requirements



\* G90 handheld

\* The Port/Tool files

\* SD to PC access (SD-adapter/SD-reader)


\---



\# Installation



Copy:



```text

ports

ports_scripts

backup

```



into:



```text

the SD main parent folder

```



\# Preparing Custom Boot Logos




Required filenames (as provided):



```text

logo.bmp

logo_kernel.bmp

logo_hdmi.bmp

logo_kernel_hdmi.bmp

loading-game.png

```



You can change the provided BMPs and PNG with image editors like Paint3D on Windows.



\---



\# Usage



Launch:



```text

BootLogoInject

and

LoadingGameInject

```



from:



```text

Ports

```



The tools will:



1\. Remount `/flash` writable

2\. Replace internal boot/load logos

3\. Sync filesystem



Then fully reboot the system.



\---


This tool was developed specifically for the internally flashed G90 EmuELEC hybrid systems using shell execution through Ports.



Because firmware variants differ, compatibility with other RK3128 devices is not guaranteed.



\---



\# Credits



Created for the G90 customization/modding community.



Pixel-OS / RoyMods-Advance project.



