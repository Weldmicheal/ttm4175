---
layout: default
title:  Lab A3
---

## On a Mac, via Internet Sharing

Connect the Pi with an ethernet cable to the Mac. Enable internet sharing. 

Find the IP address of all connected units with the command 

    arp -a
    
* This may not work when your Mac is connected to Wifi networks that do not allow internet sharing. Then your will see a warning when enabling internet sharing.


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


## Adjusting GPU Memory for JavaFX

By default, the Raspberry Pi GPU has 64 MB. When the GPU is so low, JavaFX does not run nicely. In one particular example we could not load more than one font size. Instead, [Oracle recommends][oracle] that CPU and GPU split the memory half and half. And our experience confirms that. Here's how you do it:

[oracle]: https://www.youtube.com/watch?v=BG9tKkNBscY

1. Start the configuration tool from the command line with `sudo raspi-config`
2. Select 8 (Advanced Options)
3. Select the option to adjust the memory split
3. Select the GPU memory to be 128 MB
4. Restart the Raspberry Pi