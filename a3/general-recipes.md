---
layout: default
title:  General Recipes
---


# General Recipes for the Raspberry Pi

http://www.raspberrypi.org/documentation/


## Installation with NOOBS

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

**Important:** Do not use your EDUROAM credentials to connect the Pi to the network. Anyone with access to the Pi can read the credentials. Instead, configure the Pi with the password for the temporary network we setup for the course. If you have no Wifi, connect the Pi via the ethernet port.

### Adding a Default Gateway

<!-- http://raspberrypi.stackexchange.com/questions/14101/connect-network-is-unreachable-on-a-working-wlan0-connected-interface -->

Even when connected to Wifi, you may now not be connected to the internet. Try the command

    ping google.com

As an response, you will likely get the following:
    
    ping: unknown host google.com

Let's check the routing table for the Pi. Execute the following command on the Pi:

    sudo route -n

It shows the routing table:

    Kernel IP routing table
    Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
    192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 wlan0
    
Add the default gateway (the wifi router):    
    
    sudo route add default gw 192.168.1.1
    
The routing table should look like this:

    Kernel IP routing table
    Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
    0.0.0.0         192.168.1.1     0.0.0.0         UG    0      0        0 wlan0
    192.168.1.0     0.0.0.0         255.255.255.0   U     0      0        0 wlan0
    
Now executing the ping command should work, and you should get a response.

    ping google.com
    PING google.com (148.123.29.25) 56(84) bytes of data.
    64 bytes from 148.123.29.25: icmp_req=1 ttl=57 time=25.5 ms
    64 bytes from 148.123.29.25: icmp_req=2 ttl=57 time=42.8 ms
    64 bytes from 148.123.29.25: icmp_req=3 ttl=57 time=24.3 ms
    64 bytes from 148.123.29.25: icmp_req=4 ttl=57 time=21.6 ms

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


## Connecting the Berryclip


Download the test program for the Berryclip with the following command:

    wget http://item.ntnu.no/~kraemer/ttm4175/berrycliptest.jar

Then, run it:

    sudo java -jar berrycliptest.jar
    
The LEDs should light up one after another. After that, press the button, and you should hear a beep.