---
layout: default
title:  Java Language
---


# The Java Language - Part 1

In this lecture, we will learn some parts of the Java language to program very simple applications.

## The Main Method

Whenever we want to create a program, it needs to be declared into something that is called a class. This class is defined in a file that has the same name as that class. For now, we call that class `Main`. The entire file will then look as the following:

    package ttm4175;
    
    public class Main {

        public static void main(String[] args) {
            
        }
        
    }

As you see, we have also declared a package, called `ttm4175`. Packages are simply a way to group related classes together. All Java classes should be sorted into a package. 

To keep package names unique, they are sometimes built up like web addresses. For instance, there is the Apache Camel project. Code within that project is organized as packages that start with `org.apache.camel`. 

Java itself defines packages that contain classes. These packages start with `java`. For instance, `java.utils` contains a lot of code for lists and other data structures. (So packages do not *need* to correspond to web addressed.) 

The name of our class is `Main`. With *fully qualified name* we refer to the name of the class with the package added as prefix. The fully qualified name of our class is `ttm4175.Main`.

The packages also organize how the Java file is stored. The class with the fully qualified name `ttm4175.Main` must be stored within a file called `Main.java`, and stored in a folder called `ttm4175`. If it is stored somewhere else, we will not be able to execute it.

Whenever a Java program is started, the virtual machine executed it main method. This method is declared in the following way:

    public static void main(String[] args) {
        ...
    }

This may look overwhelming at the first glance. Here is what the different keywords and letters mean:

* Between the curly braces {...} resides the method body. It contains all the logic that is executed when the method is called.
* **public** means that this method can be called also from code outside the package declaration of this class. When the virtual machine calls this method, it calls it from outside of the package.
* **static** means that we can call this method of class Main without first creating a new object of class Main. 
* **void** means that the method does not return any value.
* **String[] args** is the parameter that is passed to the method. String is a data type, and the square brackets mean that the argument is an array of strings. Within the body of the method, we can refer to the arguments by the name **args**.   

All of these elements will get clearer when we look in more detail to the different concepts.

## Back to Hello World

We can print the message *Hello World!* to the console with the following statement, which we add into the main method: 

    public static void main(String[] args) {
        System.out.println("Hello World!");            
    }

* **println** is the name of the method that we need to call.
* This method is defined as part of a class. This class is made available via a variable *out* that is declared within the class *System*. Therefore, we call the method with **System.out** as prefix.
* The simple brackets **()** are part of the method call and embrace any arguments that we pass to the method.
* **"Hello World!"** is the declaration of the String that we want to print out. Everything between the quotation marks (" ") is part of that string.
* The semicolon `;` is used after most statements. It can be tricky to place them correctly when you begin learning Java, but after a while you will not have a problem with it. If you want to know more about the semicolon, read [this blog post][semicolon] explaining a bit more.

[semicolon]: http://beginwithjava.blogspot.no/2008/06/those-pesky-semicolons.html

## Variables and Primitive Types

The types byte, short, int, long are representations of signed numbers. *Signed* means that they can be negative or positive. The different types differ in the number of bits that are used to represent them. Bytes have 8 bits, and they can represent values from -128 to 127. Shorts have 16 bits, and can therefore range from -32,768 to 32,767. Integers have 32 bits, and range from -2^31 to 2^31-1. Longs have 64 bit, and range from -2^63 to 2^63-1.

The types float and double are used to represent numbers with a floating point. 

Chars represent letters, like `a` or `*`. They are a 16-bit Unicode character.

You can learn more about types [here][types].

[types]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html

Let's run the following code:

    char letter = 'a';
    System.out.println("Letter: " + letter);
    
    int number = 2;
    System.out.println("Number: " + number);

    boolean flag = true;
    System.out.println("Flag: " + flag);
    
The output is like this:

    Letter: a
    Number: 2
    Flag: true
    
## Strings

Like the primitive types above, Strings are fundamental types that we need in most applications. Strings are sequences of chars, and used to store text of all sorts. Technically, they are not primitive types, but defined by the class `java.lang.String`. That means that when we work with strings, we actually work on objects. But more on that later.

We can declare a variable for a String like this:

    Sting hello = "Hello";

Here we already assign a value to it, it is the word *Hello*. We have already seen how to print a string to the console:

    System.out.println(hello);
    
Note that we print here the value within the variable `hello`. 

But let's do some more interesting stuff:    

    // add two numbers together
	int a = 5;
	int b = 3;
	int c = a + b;
	String result = "Adding " + a + " and " + b + " is " + c;
	System.out.println(result);
    
The output:

    Adding 5 and 3 is 8
    
What's happening here: We declare two integer variables, a and b. Then we declare a third variable, c, and assign it the value a+b. So for numbers, '+' really means addition. After that, we create a string named result. This string is created from several smaller strings, which are combined with the '+' operator. For strings, the '+' means concatenation. The result is a single string that we print out.

## Arrays

Whenever we want to work on several values of the same time, we can use an array.

An array can hold a fixed number of values. For instance, we can create an array of integers:

    int[] myIntegers;

At this point, we have only declared that the variable `myIntegers` will hold an array of integers. We have not yet created the array. To create it, we use the following statement:

    myIntegers = new int[10];

When we create the array, we have to declare how many elements the array should have. This is the length of the array. Once the array is created with a certain length, it cannot be changed.

All the elements of the array have an index number. **The index starts with 0.** So, the first element of the array has index 0. And if the array has 10 elements, the index of the last element is 9.

To set the values of certain elements, we refer to their index:

    myIntegers[0] = 100;
    myIntegers[9] = 900;

We can access the values in a similar way:

    int x = myIntegers[0];
    // x is now 100
    System.out.println(x);

Let's print all value of the array:

    System.out.println("Value at index 0 is: " + myIntegers[0]);
    System.out.println("Value at index 1 is: " + myIntegers[1]);
    System.out.println("Value at index 2 is: " + myIntegers[2]);
    System.out.println("Value at index 3 is: " + myIntegers[3]);
    System.out.println("Value at index 4 is: " + myIntegers[4]);
    System.out.println("Value at index 5 is: " + myIntegers[5]);
    System.out.println("Value at index 6 is: " + myIntegers[6]);
    System.out.println("Value at index 7 is: " + myIntegers[7]);
    System.out.println("Value at index 8 is: " + myIntegers[8]);
    System.out.println("Value at index 9 is: " + myIntegers[9]);

(We will later see how we do that much more elegant with a loop.)
When we run the program, we get the following output:

    Value at index 0 is: 100
    Value at index 1 is: 0
    Value at index 2 is: 0
    Value at index 3 is: 0
    Value at index 4 is: 0
    Value at index 5 is: 0
    Value at index 6 is: 0
    Value at index 7 is: 0
    Value at index 8 is: 0
    Value at index 9 is: 900

We have only set the first and the last value. The other values are `0`, which is the default value of an integer when we do not assign a value to it.

You can learn more about arrays [here][arrays].

[arrays]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/arrays.html



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

You can learn more about the while loop [here][while].

[while]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/while.html

## For Loops

Another loop is the for-loop. Like the while loop, it executes the statements in its body repeatedly. What is different is the control of the loop. The construct looks like this:

    for( <declaration> ; <condition> ; <statement> ) {
    }

Following the keyword for are the control sequence...

    for(int i=0; i<10; i++) {
        System.out.println("i = " + i);
    }  
    
The for loop can declare a variable, a condition that must hold while repeating, and a statement that is executed each time the loop is executing another repetition. 


Let's go back to the array from above. We can also loop over all elements of an array:

    for(int i=0; i<myIntegers.length; i++) {
        System.out.println("Value at index " + i + " is: " + myIntegers[i]);
    }
    
With `myIntegers.length`we get the length of the array, which is 10 in the example. We use this as the upper value. (Note that we use `x<myIntegers.length`, this means we do run the loop with x=9 as last value.)

You can learn more about the for loop [here][for].

[for]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/for.html


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

{% highlight java %}
double random = Math.random();
System.out.println("A random number between 0.0 and 1.0: " + random); 
if(random > 0.8) {
	System.out.println("Random number is larger than 0.5!");
} else if (random <0.3) {
	System.out.println("Random number is smaller than 0.3!");
} else {
	System.out.println("Random number is between 0.3 and 0.5!");
}
{% endhighlight %}   
    
You can learn more about if statements [here][if]. Another statement that can be used similarly to the if statement is the [switch statement]: For now, we leave it out.

[if]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/if.html
[switch statement]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/switch.html


## Operators

Operators can calculate values based on the arguments passed to them.

There are boolean operators, like `&&`and `||` that do a logical `and` and `or` on two boolean variables. We can for instance use the following code to print out a truth table for these operators:

	boolean a = false;
	boolean b = false;
	System.out.println("   a     b    a || b");
	System.out.println(" " + a + " " + b + " " + (a || b));
	b = true;
	System.out.println(" " + a + " " + b + "  " + (a || b));
	a = true;
	b = false;
	System.out.println(" " + a + "  " + b + " " + (a || b));
	b = true;
	System.out.println(" " + a + "  " + b + "  " + (a || b));
		
	a = false;
	b = false;
	System.out.println("   a     b    a && b");
	System.out.println(" " + a + " " + b + " " + (a && b));
	b = true;
	System.out.println(" " + a + " " + b + "  " + (a && b));
	a = true;
	b = false;
	System.out.println(" " + a + "  " + b + " " + (a && b));
	b = true;
	System.out.println(" " + a + "  " + b + "  " + (a && b));

We have alreay used some operators to compare values. There are the following:

    x == y    true if x and y are equal
    x =! y    true if x and y are not equal
    x <  y    true if x is smaller than y
    x <= y    true if x is smaller than or equal to y 
    x >  y    true if x is larger than y
    x >= y    true if x is larger than or equal to y

There are also math operators that work on numbers:

    x + y    (plus) the sum of x and y
    x - y    (minus) the difference of x and y
    x / y    (division) x divided by y
    x % y    (remainder) the rest that remains after dividing x by y
    
There are more operators, and the ones above can be used on other types than we have shown in the example. But I recommend that you have a look for the right operator whenever you need it, and [learn more about them][operators] when you know how you want to use them.
    
[operators]: http://docs.oracle.com/javase/tutorial/java/nutsandbolts/operators.html    