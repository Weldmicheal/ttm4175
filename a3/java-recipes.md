---
layout: default
title:  Java Recipes
---


# Java Recipes for the Raspberry Pi



## Installing Java on the Raspberry Pi

You can install [Java 8][jdk8] on the Raspberry Pi via the Advanced Packaging Tool (APT).

[jdk8]: http://docs.oracle.com/javase/8/embedded/jdk-arm-8u6/index.html

Simply update the package index:

    sudo apt-get update
    
Then install Java 8:    

    sudo apt-get install oracle-java8-jdk
    
After the installation, check the installed Java version.

    java -version
    
### Adjusting GPU Memory for JavaFX

By default, the Raspberry Pi GPU has 64 MB. When the GPU is so low, JavaFX does not run nicely. In one particular example we could not load more than one font size. Instead, [Oracle recommends][oracle] that CPU and GPU split the memory half and half. And our experience confirms that. Here's how you do it:

[oracle]: https://www.youtube.com/watch?v=BG9tKkNBscY

1. Start the configuration tool from the command line with `sudo raspi-config`
2. Select 8 (Advanced Options)
3. Select the option to adjust the memory split
3. Select the GPU memory to be 128 MB
4. Restart the Raspberry Pi
5.         

## Running Java

It is easiest to pack a Java program as an runnable jar file, copy that jar file to the Pi, and then run it. To start the Java program, use the java command:

   sudo java -jar <myjarfile>.jar

We added sudo to run it as super user. This is necessary for some programs, especially those that access the GPIO pins.



### Terminating a Java Program

    ps -ef | grep java

You will see a list of processes that have java in their name. Find the proper process, and copy its process number. 
    
    sudo kill <process-number>
