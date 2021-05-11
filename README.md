# bdaddr
Updated version of the bluez bdaddr tool

NAME
====

**bdaddr** \- Utility for changing the Bluetooth device address

SYNOPSIS
========

 **bdaddr**

 **bdaddr** -h

 **bdaddr** [-i <dev>] [-r] [-t] [new bdaddr]

DESCRIPTION
===========

**bdaddr** is used to query or set the local Bluetooth device address (BD_ADDR).

If run with no arguments, bdaddr prints the chip manufacturer's name, and the current BD_ADDR.

If the IEEE OUI index file "oui.txt" is installed on the system, the BD_ADDR owner will be
displayed.

If the optional [new bdaddr] argument is given, the device will be reprogrammed with that address.  
This can either be permanent or temporary, as specified by the -t flag.

In both cases, the device must be reset before the new address will become active.  
This can be done with a 'soft' reset by
specifying the -r flag, or a 'hard' reset by removing and replugging the
device. A 'hard' reset will cause the address to revert to the current
non-volatile value.  
The command `hciconfig hci0 reset` can be used in most cases to reset manually.

>bdaddr
uses manufacturer specific commands to set the address, and is therefore
device specific.  
>For this reason, not all devices are supported, and not all
options are supported on all devices.

Supported manufacturers in this fork are:

* Ericsson
* Cambridge Silicon Radio (CSR)
* Texas Instruments (TI)
* Zeevo
* ST Microelectronics (ST)
* Cypress Semiconductors (found in Raspberry Pi 4)
* some Intel Corporation chips


Options
-------

```
-h
        Gives a list of possible commands.

-i <dev>
        Specify a particular device to operate on. If not specified, default is the
        first available device.

-r
        Reset device and make new BD_ADDR active.

CSR devices only :

-t
        Temporary change. Do not write to non-volatile memory.
```
FILES
=====

*/usr/share/misc/oui.txt*

IEEE Organizationally Unique Identifier master file.  
Manually update it on your system from: http://standards.ieee.org/regauth/oui/oui.txt
        (optional)

BUILD
=====

libbluetooth-dev package must be installed.

To build, just type ```make``` in the source directory.

BUGS
====

See GitHub Issues: <https://github.com/thxomas/bdaddr/issues>

AUTHORS
=======

Orginal
Written by Marcel Holtmann <marcel@holtmann.org>,
man page by Adam Laurie <adam@algroup.co.uk>

Updated by thxomas
~

