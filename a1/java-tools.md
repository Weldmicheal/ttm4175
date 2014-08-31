---
layout: default
title:  Java Tools
---


# The Java Tools

Before we learn about the Java language, let's get an overview of how Java applications are written, compiled and executed.

### Java Editors

It all starts with Java source files. These files end with the suffix .java. You can create them with a simple text editor, or within a dedicated Java editor. A common Java editor comes integrated with Eclipse. (Eclipse started as a Java editor, but evolved beyond that.) Editors offer features like syntax highlighting and auto-completion of names. They can also highlight errors while you edit the file and provide fixes. Yet, once you save the *.java*-file, there is no difference if it comes from a specialized Java editor or a simple text editor.

### The Java Compiler

The Java compiler transforms the Java source files into byte code. These files end with the suffix *.class*. They contain the instructions for the Java virtual machine, which later executes the application. Byte code may be  interesting in general, but it is not necessary to understand byte code for understanding a Java program. We will thus not further dive into it.

The Java compiler is started with the following command:

    javac 

When you use Eclipse, it automatically invokes the Java compiler whenever you change a source file. So, in practice, you may never have to use the `javac` command.

### The Java Virtual Machine

To start a Java application, we start the virtual machine. You do this on the command line with the command “java”. As an argument we pass the name of the Java class that contains the main method of the application. Since there may be several classes with the same name, we use the package name as a prefix.

    java mypackage.MyClass

Alternatively, we can start a Java application from a menu in Eclipse. This, however, is the same as Eclipse calls this command. It may just be a bit more convenient.

### Other Java Tools

Other tools part of the development kit can be used to create automatic documentation from Java source files (javadoc), to sign code, or to create and work with Java archive files.

