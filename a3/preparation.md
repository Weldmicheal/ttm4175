---
layout: default
title:  Lab A3
---

# General Recipes for the Raspberry Pi

http://www.raspberrypi.org/documentation/

**The following steps are only needed if you install a fresh Raspberry Pi.**


## Installation of Raspbian with NOOBS

NOOBS is installed on the SD-cards that follow the Pi, or can be downloaded [here][noobs].
It makes it easy to install a GNU/Linux distribution on the Pi. Read more [here][installation].

[noobs]: http://www.raspberrypi.org/downloads/
[installation]: http://raspberrypihq.com/noobs-raspberry-pi-os-installation-made-easy/

* Connect the Pi to a monitor
* Connect a keyboard and a mouse
* Set in the SD card with NOOBS installed
* Power up the Pi
* Select the default choice, **Raspbian**
* Install
* Reboot


## After Installation

Find out which kernel is installed:

    uname -a
    
The result can look like this:

    Linux raspberrypi 3.12.22+ #691 PREEMPT Wed Jun 18 18:29:58 BST 2014 armv6l GNU/Linux  
    

## Installing Java on the Raspberry Pi

Most likely, Java is already installed on the Pi if you have installed a newer version of Raspbian. Check if Java is installed, and with which version:

    java -version

You can install [Java 8][jdk8] on the Raspberry Pi via the Advanced Packaging Tool (APT).

[jdk8]: http://docs.oracle.com/javase/8/embedded/jdk-arm-8u6/index.html

Simply update the package index:

    sudo apt-get update
    
Then install Java 8:    

    sudo apt-get install oracle-java8-jdk
    
After the installation, check the installed Java version.

    java -version
    