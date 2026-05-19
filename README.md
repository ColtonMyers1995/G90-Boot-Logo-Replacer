\# G90 BootLogoInject



A simple Ports + ports\_scripts based tool for the G90 handheld that allows direct replacement of the internal boot splash BMP files located in `/flash`.



Designed for:



\* EmuELEC hybrid G90 systems

\* Internal firmware installations

\* Pixel-OS / RoyMods-Advance customization workflows



\---



\# Features



\* Replaces:



&#x20; \* `logo.bmp`

&#x20; \* `logo\_kernel.bmp`

&#x20; \* `logo\_hdmi.bmp`

&#x20; \* `logo\_kernel\_hdmi.bmp`

\* Uses Ports launcher system

\* No firmware reflashing required

\* Works directly from SD card ports/ports_scripts and backup folder setup


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

ports\_scripts

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

logo\_kernel.bmp

logo\_hdmi.bmp

logo\_kernel\_hdmi.bmp

```



Place edited BMPs (use PAINT3D or other BMP editor to make your own) into:



```text

/backup/

```



\---



\# Usage



Launch:



```text

BootLogoInject

```



from:



```text

Ports

```



The tool will:



1\. Remount `/flash` writable

2\. Replace internal boot logos

3\. Sync filesystem



Then fully reboot the system.



\---


This tool was developed specifically for the internally flashed G90 EmuELEC hybrid systems using shell execution through Ports.



Because firmware variants differ, compatibility with other RK3128 devices is not guaranteed.



\---



\# Credits



Created for the G90 customization/modding community.



Pixel-OS / RoyMods-Advance project.



