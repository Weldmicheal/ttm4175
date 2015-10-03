---
layout: default
title:  Java Language - Part 2
---

# The Java Language - Part 2

In the previous part, we have learned how to write some simple programs withing a single method. In this second part, we will have a look at how programs are structured using methods and classes. We will also see what objects are.


## Methods

Methods are a way to structure programs into smaller tasks that can be easily reused. We have already used the method `System.out.println()` to write output to the console, and we got familiar with the method `Math.random()` that returned a random number.

Methods can return a value. For instance, the method below takes the two integer values that we pass to it, and returns their sum:

    public static int addTogether(int a, int b) {
        return a + b;
    }

The return value of the method is `int`.

A method without any return value simply declares that it returns `void`. The method below, for instance, prints out the value of `a || b`, but does not return any value:


    public static void printLogicOr(boolean a, boolean b) {
        System.out.println(" " + a + "  " + b + "  " + (a || b));
    }

With this method, the truth table that we have written previously can be expressed much nicer:

    printLogicOr(false, false);    
    printLogicOr(false, true);    
    printLogicOr(true,  false);    
    printLogicOr(true,  true); 

## Running Programs Means Executing Methods

When we run a Java application, we start the main method of our main class (1). Within this method, we have statements, like assignments of values to variables or if-statements. Statements can also call other methods. For instance, the main method m1 on the example below calls first method m2 of class C2 and then method m3 (2), (3). These methods can call in turn other methods. In class C3 we see that method m4 calls method m5 (4), and that m5 calls itself (5). Once all methods have finished (we say, they "return"), the main method started in the beginning finishes and the application ends.

![Alt text](images/java-overview.png)    
    
You can read more about methods [here][methods].

[methods]: http://docs.oracle.com/javase/tutorial/java/javaOO/methods.html


## Importing Packages

We have so far worked only in our own package `ttm4175`. As soon as we need access to classes outside of our own package, we need to import packages. An exception is the package `java.lang`. It contains the classes System and Math, which we already used. This package is imported by default.

If we want to use other classes, we need to import them. We do this right after the package declaration. For instance, when we need to import the classes for sets and lists, we do the following:

    import java.util.ArrayList;
    import java.util.HashSet;
    import java.util.List;
    import java.util.Set;

This imports the types `ArrayList`, `HashSet`, `List`, and `Set` from the package `java.util`.

## Classes and Objects

An object is a data structure combined with some methods. It is called an object, because it can be compared with objects in real life: It is a "thing", and we can do somehting with it. The "things" is what we describe by the data. And the stuff we do with it is described by its methods.

Let us create a new object. This object is a list, into which we can put other elements:

    ArrayList list1;
    list1 = new ArrayList();
    
The first line declares a variable with name `list`. The second line creates an object of type `ArrayList`, and assigns it to variable `list1`. The keyword `new` has really created an object. It now resides in the memory of our program.  `ArrayList` is a class that is part of the standard library of Java. When we create a new object, we also say that we "instantiate" a class. I.e., we create an instance.

When we have an object, we can call methods on it. We can, for example, add elements into the array list:

    list1.add("A");
    list1.add("B");
    list1.add("C");
    list1.add("D");
    
We added four elements to the array list, using the method `add()` that is declared for the class `ArrayList`.
We can also call other methods on the list:

    int size = list1.size();
    System.out.println("Size: " + size);
    
This program prints out `4`, since the list contains the elements A, B, C, D.     

The example above shows how we use a given class (`ArrayList`), create an object from it, and work with it. Of course, we can also declare our own classes, from which we can create our own objects: 
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
            System.out.println("cadence:" 
                + cadence + " speed:" 
                + speed + " gear:" + gear);
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

After the creation of the objects with new, we use the methods defined in Bicycle to work on their data. To invoke the method, we write the name of the variable, a dot, and then the method name that should be invoked, together with the argument. The output of this test prints the ending pedal cadence, speed, and gear for the two bicycles:

    cadence:50 speed:10 gear:2
    cadence:40 speed:20 gear:3


## Constructors

With constructors, we can control the state of an object when we create it. 
The constructor of a class is called when we create a new object of it (with keyword `new`). It can have arguments, so that the new instance of the object is initialized with specific values.

The bicycle examples above did not use a specific constructor for the bikes. Therefore, we created new bikes in the following way:

    Bicycle bike1 = new Bicycle();
    Bicycle bike2 = new Bicycle();

But what if we would like to create bikes that have different properties? Let's assume that our bikes have not only cadence, speed and gear. We can add also a color and the name of the cyclist. If we want that these values are set right from the beginning og the object's life time, we can set them when we create the objects:

    Bicycle bike1 = new Bicycle("red", "Peter");
    Bicycle bike2 = new Bicycle("blue", "Mike");

For this to work, we have to add a constructor to the original class Bicycle:

    class Bicycle {

        int cadence = 0;
        int speed = 0;
        int gear = 1;
        String color;
        String cyclist;
        
        public Bicycle(String c1, String c2) {
            color = c1;
            cyclist = c2;
        }
        
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
            System.out.println("cadence:" 
                + cadence + " speed:" 
                + speed + " gear:" + gear);
        }
    }

When we create the instances with the color and the name of the cylists as above, we set the values of the variables color and cyclist of the bicycles to the corresponding values. There is nothing special with these variables, they work like the others, but they have an initial value (other than their default value) right from the object's creation.


You can read more about objects and classes [here][oo].

[oo]: http://en.wikipedia.org/wiki/Object-oriented_programming

