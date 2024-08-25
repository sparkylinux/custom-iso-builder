#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /etc/custom-iso-builder.conf
	rm -f /usr/bin/custom-iso-builder
	rm -rf /usr/lib/custom-iso-builder
	#rm -f /usr/lib/sparkycenter/system/custom-iso-builder.desktop
	rm -f /usr/share/applications/custom-iso-builder.desktop
	rm -f /usr/share/menu/custom-iso-builder
	rm -rf /usr/share/sparky/custom-iso-builder
else
	cp etc/* /etc/
	cp bin/* /usr/bin/
	if [ ! -d /usr/lib/custom-iso-builder/bin ]; then
		mkdir -p /usr/lib/custom-iso-builder/bin
	fi
	cp lib/* /usr/lib/custom-iso-builder/bin/
	#if [ ! -d /usr/lib/sparkycenter/system ]; then
	#	mkdir -p /usr/lib/sparkycenter/system
	#fi
	#cp share/custom-iso-builder.desktop /usr/lib/sparkycenter/system/
	cp share/custom-iso-builder.desktop /usr/share/applications/custom-iso-builder.desktop
	cp share/custom-iso-builder /usr/share/menu/
	if [ ! -d /usr/share/sparky/custom-iso-builder ]; then
		mkdir -p /usr/share/sparky/custom-iso-builder
	fi
	cp lang/* /usr/share/sparky/custom-iso-builder/
fi
