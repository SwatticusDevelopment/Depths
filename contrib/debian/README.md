
Debian
====================
This directory contains files used to package Depthsd/Depths-qt
for Debian-based Linux systems. If you compile Depthsd/Depths-qt yourself, there are some useful files here.

## Depths: URI support ##


Depths-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install Depths-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your Depths-qt binary to `/usr/bin`
and the `../../share/pixmaps/Depths128.png` to `/usr/share/pixmaps`

Depths-qt.protocol (KDE)

