---
layout: default
title:  General Recipes
---


# General Recipes for the Raspberry Pi

http://www.raspberrypi.org/documentation/


# Installation with NOOBS


http://www.raspberrypi.org/downloads/

http://raspberrypihq.com/noobs-raspberry-pi-os-installation-made-easy/


* Connect the Pi to a monitor
* Connect a keyboard and a mouse
* Set in the SD card with NOOBS installed
* Power up the Pi

* Select the default choice, Raspbian
* Install
* Reboot


## After Installation

Find out which kernel is installed:

    uname -a
    
The result can look like this:

    Linux raspberrypi 3.12.22+ #691 PREEMPT Wed Jun 18 18:29:58 BST 2014 armv6l GNU/Linux  
    

## Configure the Network

* Plug in the Wifi USB adapter
* Configure wifi
* Check the connection
* Fix the IP address and write it down

### When Connected to a Monitor

* startx
* Open tool WiFi Config
* Click Scan
* A table with netword and their SSID should appear
* double-click on the one you want to connect to
* add the password
* click Add




## Shutting Down and Rebooting Gently

Just unplugging power may leave the file system corrupted. To properly shutdown, use the following commands:

    sudo shutdown
  
or, to reboot:

    sudo reboot
    
## Using a Monitor Connected to the Pi

Simply start your Pi with a monitor connected, and it will print out its ip address right before it finishes starting up. You can also get the IP address with the following command:

    hostname -I  
    
## On a Mac, via Internet Sharing

Connect the Pi with an ethernet cable to the Mac. Enable internet sharing. 

Find the IP address of all connected units with the command 

    arp -a
    
* This may not work when your Mac is connected to Wifi networks that do not allow internet sharing. Then your will see a warning when enabling internet sharing.

## SSH 

[SSH] is a protocol to securely connect to a computer. Via SSH you can access the command line, just as if you connected to the computer with a monitor and a keyboard. By default, the Pi has SSH enabled. 

[SSH]: http://en.wikipedia.org/wiki/Secure_Shell

### Windows: SSH via Putty

You can download Putty from [here][putty]. The Raspberry Pi Foundation has a quick introduction [here][rpiputty].

[putty]:  http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html
[rpiputty]: http://www.raspberrypi.org/documentation/remote-access/ssh/windows.md

### Mac and Linux

On Mac and Linux, SSH is already installed and available within the terminal.

http://www.raspberrypi.org/documentation/remote-access/ssh/unix.md





## Copying a File to the Raspberry Pi


### From the Command Line
If you want to copy a file to the Raspberry Pi form your PC, use the following command:

    scp <filename> pi@<ip address of the pi>:~/
    
For example:

    scp getmyip.jar pi@192.168.1.106:~/

This will copy the file into the home directory (/home/pi). During the process, you will be asked for the password for the username *pi*. If you did not change anything, that password is *raspberry*.


