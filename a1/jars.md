---
layout: default
title: Jars
---

## Java Archives

A Java virtual machine can execute byte code directly from the class files. But most applications consist not only of a single class file, but several. In addition, an application may need other files, like images. To deploy applications (or libraries, but more on that later) in a single file, we can combine all needed files as a zip archive. To mark that this zip file contains Java resources, we give it the file extension *.jar*. It is a so-called jar file.

To start a Java program within a jar file, we use again the Java virtual machine. As argument we pass the name of the jar file together with the option -jar, to tell the virtual machine that it should look inside the jar file.

    java -jar MyJar.jar

A jar file contains a so-called manifest file. This file contains information about the jar file. The most important information is the application entry point, i.e., the name of the class with the main method. 

    Manifest-Version: 1.0
    Main-Class: mypackage.MyClass

So, even if our application consists of several files, you can package everything together as a neat jar file. The application can then be started without knowing what the main application class is, since it is written in the manifest.

Note that only jar files that contain a class with a static `main()` method can be execute. We call them *runnable* jar files. 

Jar files without any main method or complete application are used to provide libraries (also called APIs). Such libraries can be used by other applications. This is when we come to dependencies and the class path.

## Dependencies and the Class Path

Most applications are not entirely written from scratch, but refer to existing code. This code is packaged as jar files and called library, or API (application programming interface). An example is an API to manipulate images, or an API to communicate over a network. Java comes itself with a number of libraries for different purposes. More about them later.

The class path has two tasks:

- Tell the Java compiler which where all libraries are when it creates the byte code.
- Tell the Java virtual machine where all libraries are when it executes an Java application.

The principle of a class path is simple. It is just a list of paths and files that point to all Java classes and jar files. In practice, this can get messy and it is easy to loose overview.