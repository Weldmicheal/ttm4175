---
layout: default
title:  General Recipes
---



## Shutting Down and Rebooting Gently

Just unplugging power may leave the file system corrupted. To properly shutdown, use the following commands:

    sudo shutdown
  
or, to reboot:

    sudo reboot
    
## Using a Monitor Connected to the Pi

Simply start your Pi with a monitor connected, and it will print out its ip address right before it finishes starting up. You can also get the IP address with the following command:

    hostname -I  
    
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

To log into the Pi via ssh, type:

    ssh pi@<ip-address>
    
Replace `<ip-address>` with the IP address of the Pi.     

## Copying a File to the Raspberry Pi


### From the Command Line
If you want to copy a file to the Raspberry Pi form your PC, use the following command:

    scp <filename> pi@<ip address of the pi>:~/
    
For example:

    scp getmyip.jar pi@192.168.1.106:~/

This will copy the file into the home directory (/home/pi). During the process, you will be asked for the password for the username *pi*. If you did not change anything, that password is *raspberry*.