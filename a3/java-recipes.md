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
    

## Exporting a Runnable Jar from Eclipse

You can create a runnable jar file from an Eclipse project that contains all files necessary to run an application. 

* Select File / Export...
* Select Java / Runnable JAR file

The export wizard opens:

![alt](images/export-runnable-jar.png)

* Select the launch configuration that you want to export. Such a launch configuration is created automatically if you have built the project with Reactive Blocks.
* Select the name of the jar file that should be created. Make sure it ends with *.jar.
* Select the first option for library handling.
* Click Finish.
* Ignore possible warnings during the export.

**Tips:**

* It's easy to select the wrong launch configuration, since you may have several runnable applications in your workspace. 
* Whenever you export a new version of an application, change the file name of the jar file. You can, for instance, append a number that you increase with each version. When different versions of a jar file have the same name it is very easy to mess up things and to accidentally run an outdated version. So, never produce a jar file with the exact same name!

## Running Java

It is easiest to pack a Java program as an runnable jar file, copy that jar file to the Pi, and then run it. To start the Java program, use the java command:

   sudo java -jar <myjarfile>.jar

We added sudo to run it as super user. This is necessary for some programs, especially those that access the GPIO pins.


## Terminating a Java Program

    ps -ef | grep java

You will see a list of processes that have java in their name. Find the proper process, and copy its process number. 
    
    sudo kill <process-number>
    
You can also use

    sudo killall java


## Adjusting GPU Memory for JavaFX

By default, the Raspberry Pi GPU has 64 MB. When the GPU is so low, JavaFX does not run nicely. In one particular example we could not load more than one font size. Instead, [Oracle recommends][oracle] that CPU and GPU split the memory half and half. And our experience confirms that. Here's how you do it:

[oracle]: https://www.youtube.com/watch?v=BG9tKkNBscY

1. Start the configuration tool from the command line with `sudo raspi-config`
2. Select 8 (Advanced Options)
3. Select the option to adjust the memory split
3. Select the GPU memory to be 128 MB
4. Restart the Raspberry Pi

