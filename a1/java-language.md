---
layout: default
title:  Java Language
---


# Java Language

We will first discuss the functional aspects of Java, then learn about objects.

## The Main Method

Whenever a Java program is started, the virtual machine executed it main method. This method is declared in the following way:

    public static void main(String[] args) {
        ...
    }

This may look overwhelming at the first glance. Here is what the different keywords and letters mean:

* Between the curly braces {...} resides the method body. It contains all the logic that is executed when the method is called.
* **public** means that this method can be called also from code outside the package declaration of this class. When the virtual machine calls this method, it calls it from outside of the package.
* **static** means that this method does not require an object to be instantiated, it can be executed with only referring to the class.
* **void** means that the method does not return any value.
* **String[] args** is the parameter that is passed to the method. String is a data type, and the square brackets mean that the argument is an array of strings. Within the body of the method, we can refer to the arguments by the name **args**.   

All of these elements will get clearer when we look in more detail to the different concepts.

Java is object-oriented. We will later see, what this means. For now, knowing that helps us to accept that the main method needs to be declared inside something called a class. Don't bother too much about this for now. To declare a main method, we need a class. This class is defined in a file that shares the same name as the class. For now, we call that class Main. The entire file will then look as the following:

    package ttm4175;
    
    public class Main {

        public static void main(String[] args) {
            
        }
        
    }

As you see, we have also declared a package, called ttm4175. Packages are simply a way to group related classes together. All Java classes should be sorted into a package. 

To keep package names unique, they are sometimes built up like web addresses. For instance, there is the Apache Camel project. Code within that project is organized as packages that start with org.apache.camel. 

Java itself defines packages that contain classes. These packages start with java. For instance, java.utils contains a lot of code for lists and other data structures. (So packages do not *need* to correspond to web addressed.) 

The name of our class is Main. With *fully qualified name* we refer to the name of the class with the package added as prefix. The fully qualified name of our class is ttm4175.Main.

The packages also organize how the Java file is stored. The class with the fully qualified name ttm4175.Main must be stored within a file called Main.java, and stored in a folder called ttm4175. If it is stored somewhere else, we will not be able to execute it.

## Back to Hello World

We can the message *Hello World!* to the console with the following statement, which we add into the main method: 

    public static void main(String[] args) {
        System.out.println("Hello World!");            
    }

* **println** is the name of the method that we need to call.
* This method is defined as part of a class. This class is made available via a variable *out* that is declared within the class *System*. Therefore, we call the method with **System.out** as prefix.
* The simple brackets **()** are part of the method call and embrace any arguments that we pass to the method.
* **"Hello World!"** is the declaration of the String that we want to print out. Everything between the quotation marks (" ") is part of that string.


## Variables and Primitive Types

The types byte, short, int, long are representations of signed numbers. They differ in the number of bits that are used to represent them. Bytes have 8 bits, and they can represent values from -128 to 127. Shorts have 16 bits, and can therefore range from -32,768 to 32,767. Integers have 32 bits, and range from -2^31 to 2^31-1. Longs have 64 bit, and range from -2^63 to 2^63-1.

The types float and double are used to represent numbers with a floating point. 

Chars represent letters. They are a 16-bit Unicode character.

http://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html

    char letter = 'a';
    System.out.println("Letter: " + letter)
    
    int number = 2;
    System.out.println("Number: " + number)

    boolean flag = true;
    System.out.println("Flag: " + flag)
    
Let's do some more interesting stuff:    

    // add two numbers together
	int a = 5;
	int b = 3;
	int c = a + b;
	String result = "Adding " + a + " and " + b + " is " + c;
	System.out.println(result);
    
We declare two integer variables, a and b. Then we declare a third variable, c, and assign it the value a+b. So for numbers, '+' really means addition. After that, we create a string named result. This string is created from several smaller strings, which are combined with the '+' operator. For strings, the '+' means concatenation. The result is a single string that we print out.


## More Stuff to Do

We have seen that we can use System.out.println() to write something to the console. Java comes with many other libraries of classes that can be used for all sorts of things. 

	// get the current time
	long milliseconds = System.currentTimeMillis();
	System.out.println("Milliseconds since 1 January 1970 00:00:00: " + milliseconds);
		
The class Math provides many mathematical operations:
        
	// get a random number
	double random = Math.random();
    System.out.println("A random number between 0.0 and 1.0: " + random);


## While Loops

Loops repeat the statements that are declared in their body. A while-loop looks like this:

    while( <condition> ) {
        <statements>
    }
    
The following code prints the numbers from 0 to 9:

    int x = 0;
    while(x<10) {
        System.out.println("x = " + x);
        int x = x + 1;
    }
    
Within the round brackets there is the expression `x<10`. The loop is executed while this statement remains true. Within the curly braces, the statements print out the value of x, and increase x for each repetition.

So the output of this code is the following:

    0
    1
    2
    3
    4
    5
    6
    7
    8
    9

http://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html

## For Loops

Another loop is the for-loop. Like the while loop, it executes the statements in its body repeatedly. What is different is the control of the loop. The construct looks like this:

    for( <declaration> ; <condition> ; <statement> ) {
    }

Following the keyword for are the control sequence...

    for(int i=0; i<10; i++) {
        System.out.println("i = " + i);
    }  
    
The for loop can declare a variable, a condition that must hold while repeating, and a statement that is executed each time the loop is executing another repetition.    

http://docs.oracle.com/javase/tutorial/java/nutsandbolts/for.html

## If Statements

If statements are for branching depending on a condition. An if statement looks like this:

    if ( <condition1> ) {
        ...
    } else if ( <condition2> ) {
       ...
    } else {
       ...
    }
    
* The first if-branch must be there. 
* There can be any number of else-if branches, which are selected if their condition is true and none of the conditions of the previous above is true. 
* The else-branch (without condition) can come as last branch and is optional. It is taken if none of the other branches is taken.

    double random = Math.random();
	System.out.println("A random number between 0.0 and 1.0: " + random); 
    if(random > 0.8) {
		System.out.println("Random number is larger than 0.5!");
	} else if (random <0.3) {
		System.out.println("Random number is smaller than 0.3!");
	} else {
		System.out.println("Random number is between 0.3 and 0.5!");
	}

http://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html

### Switch Statements

http://docs.oracle.com/javase/tutorial/java/nutsandbolts/switch.html


### Arrays

http://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html

### Operators
Assignment

    =

Equality 

    == =!
    
Logical AND

    &&
 
Logical OR
    
    ||
           
Math

    + - * / %
    
Comparing

    > < <= >= instanceof
    
http://docs.oracle.com/javase/tutorial/java/nutsandbolts/operators.html    


## Importing Packages

We have so far worked only in our own package `ttm4175`. As soon as we need access to classes outside of our own package, we need to import packages. An exception is the package `java.lang`. It contains the classes System and Math, which we already used. This package is imported by default.


## Methods

Methods are a way to structure programs into smaller tasks that can be easily reused. We have already used the method `System.out.println()` to write output to the console, and we got familiar with the method `Math.random()` that returned a random number.

When we run a Java application, we start the main method of our main class (1). Within this method, we have statements, like assignments of values to variables or if-statements. Statements can also call other methods. For instance, the main method m1 on the example below calls first method m2 of class C2 and then method m3. These methods can call in turn other methods. In class C3 we see that method m4 calls method m5, and that m5 calls itself. Once all methods have finished (we say, they "return"), the main method started in the beginning finishes and our application ends.



![Alt text](images/java-overview.png)

http://docs.oracle.com/javase/tutorial/java/javaOO/methods.html

Return values

## Classes and Objects

The way we used Java up to now is called functional style. We declared some variables and let methods (functions) work on the variables. 

http://en.wikipedia.org/wiki/Functional_programming

One of the main ideas behind object-orientation is the combination of data (the variables) together with methods. The data makes up the state of an object. The methods describe the behavior that an object can have. With the object-oriented style, one can think of data as things, with which we can do stuff (execute methods). Once you get your head around object-orientation, it is intuitive. 

http://en.wikipedia.org/wiki/Object-oriented_programming


As illustration we use a simple [bicycle example] from the Java tutorial. 

[bicycle example]: http://docs.oracle.com/javase/tutorial/java/concepts/class.html

    class Bicycle {

    int cadence = 0;
    int speed = 0;
    int gear = 1;

    void changeCadence(int newValue) {
         cadence = newValue;
    }

    void changeGear(int newValue) {
         gear = newValue;
    }

    void speedUp(int increment) {
         speed = speed + increment;   
    }

    void applyBrakes(int decrement) {
         speed = speed - decrement;
    }

    void printStates() {
         System.out.println("cadence:" +
             cadence + " speed:" + 
             speed + " gear:" + gear);
    }
    }

The declaration above is a class. We have not created any object from the class. This means that there exists no bicycle in memory yet. 

The [code below] shows how we can use the Bicycle class. We declare two variables, bike1 and bike2. Both variables are of type Bicycle. The type corresponds to the class name. With the operator new we create new instances of Bicycle, and assign it to variables bike1 and bike2.

So now, our application has created two objects of type Bicycle. This also means that the memory used by our application increased. When creating the bicycles, variables for their fields cadence, speed and gear have been created. 

[code below]: http://docs.oracle.com/javase/tutorial/java/concepts/class.html

    public static void main(String[] args) {

        // Create two different Bicycle objects
        Bicycle bike1 = new Bicycle();
        Bicycle bike2 = new Bicycle();

        // Invoke methods on those objects
        bike1.changeCadence(50);
        bike1.speedUp(10);
        bike1.changeGear(2);
        bike1.printStates();

        bike2.changeCadence(50);
        bike2.speedUp(10);
        bike2.changeGear(2);
        bike2.changeCadence(40);
        bike2.speedUp(10);
        bike2.changeGear(3);
        bike2.printStates();
    }

After the creation of the objects with new, we use the methods defined in Bicycle to work on their data. To invoke the method, we write the name of the variable, a dot, and then the method name that should be invoked, together with the argument.

    cadence:50 speed:10 gear:2
    cadence:40 speed:20 gear:3

The output of this test prints the ending pedal cadence, speed, and gear for the two bicycles:

## Constructors

## Other Language Features

**Reflection:** A Java program can analyze a type during runtime. For example, you can check if a class has a certain method implemented, and invoking that method.

**Inner Classes:** All data types in Java (apart from the built-in primitives) are defined by classes. With inner classes, you can declare classes also *within* another class, as a helper construct.

**Assertions:** Assertions are statements in the program that make a claim that something is true. 

     assert numerOfLeaves > 0;


Here, for instance, we assert that a certain variable is larger than zero. This is helpful for developers, because after the assert statement we do not have to take the case into account that the numberOfLeaves is zero or smaller. In case the assertion does not evaluate to true, the line throws an AssertionException. 

**Generics:** A list, for instance, can hold any type of object. That is why the method to add a new element to the list has the signature `add(Object o)` This also means that when we retrieve an element from a list, we only know that it is an object. We have to cast it into a specific class if we want to invoke any methods on it that are defined by that class.

With generics, we can declare that the list contains only objects of a certain type. 

**Annotations:**


**Autoboxing:**

**Enumerations:**

Enumerations can define a data type that consist of a set of predefined constants. For instance, we can define a day as follows:

    public enum Day {
        SUNDAY, MONDAY, TUESDAY, WEDNESDAY,
        THURSDAY, FRIDAY, SATURDAY 
    }
    
Another solution would be to encode a day as an integer, and having a convention that sunday=0, monday=1, and so on. By defining enumerations, we have several benefits:

* they can be part of a switch statement, and the compiler can check if we distinguish all cases
* makes programs more expressive, and type save
* easier to debug
* enumerations can also define methods and variables. we can realize anything that would fit into a table, as long as the entires in the table are constant.

http://docs.oracle.com/javase/tutorial/java/javaOO/enum.html    

**Varargs:**

**For Each Loops:**

**Lambda Expressions:**

http://www.oracle.com/webfolder/technetwork/tutorials/obe/java/Lambda-QuickStart/index.html

**Streams:**

http://en.wikipedia.org/wiki/MapReduce

## Java Keywords

Some keywords are used for several different functions. The keyword *static*, for instance, can be used to declare static variables,  inner static classes and static imports. Since this is only an introduction, we will in the following learn only the *main* or *most important* function of that keyword. 

Creating and referring to objects:

    new, super, this

Importing and declaration of packages:

    import, package

To flag final or static variables and methods:

    final, static 

To manage return types of methods:

    return, void

To manage the visibility of types and variables:
    
    private, protected, public

Declaration of classes, interfaces, enumerations:
    
    class, enum, extends, implements, interface

Program control flow:
    
    break, case, continue, default, do, else, for, if, switch, while

Exception handling:

    catch, throw, throws, try 

Primitive types: 
    
    boolean, byte, char, double, float, int, long, short

Literal values:

    false, null, true


We will ignore the following:
    
    abstract, continue, instanceof, finally, native, strictfp, synchronized, transient, volatile, const, goto