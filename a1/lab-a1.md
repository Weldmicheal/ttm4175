---
layout: default
title:  Java Exercises
---

    -2.. too easy
    -1.. easy 
     0.. just the right difficulty 
    +1.. hard, but doable
    +2.. too hard
    
# Java Exercises


## Hello World

**Task A1.1:** Go through the [steps to create a Hello World application in Eclipse][eclipse], as we did in class. Run the application. 

[eclipse]: eclipse.html

## Java Keyword Piles

**Task A1.1:**
Print the cards with the Java keywords, and cut them out. Shuffle the cards and pile them up. Each of the team members draws a card from the pile and assigns them to one of the keyword groups. Discuss for each keyword group what it is used for.

Take a picture of the piles and include it in your report.

## Looping Around

The following method contains a simple for-loop.

	public static void loop1() {
		for(int i=0; i<5; i=i+1) {
			System.out.println(i);
		}
	}

Hint: The statement `i=i+1;` increments the counter `i` by one. This statement can also be written as `i++`. So if you see it elsewhere, you know what it means. 

**Task:** 
Before running the main method and calling `loop1()` in it, try to predict what you will see in the console window. Write down you prediction. After that, run the program. Compare.


Exchange the method call `System.out.println(i)` with `System.out.print(i)`. The method `println(i)` is documented [here][println], and `print(i)` is documented [here][print].

**Task:**
Read the documentation of these two methods, and try to predict what will happen. Then, run the program. Describe.

[println]: http://docs.oracle.com/javase/8/docs/api/java/io/PrintStream.html#println-java.lang.String-
[print]: http://docs.oracle.com/javase/8/docs/api/java/io/PrintStream.html#print-java.lang.String-

Have a look at the loop in method `loop2()`. Something very important is missing here. To run it, place a comment before `loop1()`and uncomment `loop2()`. But beware - the program will probably behave strangely and you have to cancel it. 

	public static void loop2() {
		int i=0;
		while(i<5) {
			System.out.println(i);
		}
	}

**Task:** What is happening here? Which statement is missing?


## Fibonacci Messed it up

The [Fibonacci numbers][wiki] form a series of numbers 

    0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

Starting with the numbers 0, 1, the following numbers in this series are calculated by adding together its two predecessors. (The series starts either with 0,1 or 1,1. In the following, we start with 0,1.) So, when the first two numbers are 0 and 1, the third is 0+1=1, and the fourth is 1+1=2, and so on.

[wiki]: http://en.wikipedia.org/wiki/Fibonacci_number

**Task:**
The sequence above shos the first 10 Fibonacci numbers. Which are the subsequent two numbers?

**Task A1.2:**
Write a function in Java that returns the n-th Fibonacci number. The method should have the following signature:

    public static long fib(int n) {
        ...
    }

In the template for this exercise we have included a main method. It calls the fib method with some pre-calculated values. It works like a test suite, by checking if your method calculates the correct numbers at least for some selected examples. Use it while you develop your implementation of `fib(int n)`.  

Within the method, use a for-loop and an integer variables to calculate the result. It may be necessary to treat the first two values separately. For that, you can use if-statements. 
    
**Solution Alternative 1 (Advanced):** Write the contents of the method yourself. 

**Solution Alternative 2:** Find the solution, by re-ordering the following code lines. Simply assume Mr. Fibonacci has messed up his program and you should sort it again.

    }
    }
    }
    } else {
    } else if(n==1) {
    for(int i=1; i<n; i++) {
    if(n==0) {
    int int1 = 1;
    int int2 = 0;
    int sum = 0;
    int1 = sum;
    int2 = int1;
    public static int fib(int n) {
    return 0;
    return 1;
    return sum;
    sum = int1 + int2;

**Task:**
Describe briefly why this method can be *static*. You may have a look at the explanations given on [Stackoverflow].

[Stackoverflow]: http://stackoverflow.com/questions/413898/what-does-the-static-keyword-do-in-a-class

**Task:** (Advanced)
Given that you are using integers as variables, until which n can you calculate the numbers? What happens if you go above it?

**Task:** (Advanced)
Another way to calculate the Fibonacci numbers is the following:

    public static long fibRec(int n) {
        if (n <= 1) return n;
        else return fibRec(n-1) + fibRec(n-2);
    }
    
This function `fibRec()` calls itself. Can you explain how this works?

## Multiplication Table

**Task:**
Write a program that has the following output:
<!-- taken from http://www.ntu.edu.sg/home/ehchua/programming/java/J2a_BasicsExercises.html -->

     * |  1  2  3  4  5  6  7  8  9
    -------------------------------
     1 |  1  2  3  4  5  6  7  8  9
     2 |  2  4  6  8 10 12 14 16 18
     3 |  3  6  9 12 15 18 21 24 27
     4 |  4  8 12 16 20 24 28 32 36
     5 |  5 10 15 20 25 30 35 40 45
     6 |  6 12 18 24 30 36 42 48 54
     7 |  7 14 21 28 35 42 49 56 63
     8 |  8 16 24 32 40 48 56 64 72
     9 |  9 18 27 36 45 54 63 72 81

Obviously, the program should calculate the results of the multiplication, not just printing out a line like this:

      ...
      System.out.println("3 |  3  6  9 12 15 18 21 24 27");
      ...

## Java Collections

**Task:**
Read the documentation for the [list] and the [set] interfaces. Both are collections of objects. State briefly in your own words what the most important differences between the two are.

[list]: http://docs.oracle.com/javase/8/docs/api/index.html?java/util/Set.html
[set]: http://docs.oracle.com/javase/8/docs/api/index.html?java/util/Set.html

**Task:**
Name a couple of examples for cases where you would use lists and where you would use sets.

**Task:**
Why does the method `java.util.Collections.sort(List)` only accept lists as arguments, not sets?

<!--
**Task:**
The elements in the list are added in a certain order. Manipulate the sequence of the elements, so that you have another order.
(What makes sense here?) 
-->

## Morse Code Map



    a .-      j .---   s ...
    b -...    k -.-    t -
    c -.-.    l .-..   u ..- 
    d -..     m --     v ...-
    e .       n -.     w .--
    f ..-.    o ---    x -..-
    g --.     p .--.   y -.--
    h ....    q --.-   z --..
    i ..      r .-.
    
    1 .----   6 -....
    2 ..---   7 --...
    3 ...--   8 ---..
    4 ....-   9 ----.
    5 .....   0 -----
    
**Task:**
Build a map that you can then use to decode morse signs given as Strings.

http://runeberg.org/peergynt/1a.html

**Task**
The array of Strings `SECRET` contains a number of Strings. Each of them is a sequence of morse signs that make a word. The signs are separated by a whitespace character " ". 

    StringTokenizer st = new StringTokenizer("we have to work with what we have");
	while(st.hasMoreElements()) {
		String word = st.nextToken();
		System.out.println(word);
	}
		
		

**Task**
Another way to decode Morse signals into letters is via Dichotomic search, as shown at the end of http://en.wikipedia.org/wiki/Morse_code. Implement a method that uses this method of decoding morse signals, and use it for the transmission above.   

## Alice in Wonderland

Download the file
Parse it, so that you can process each line.

    http://www.gutenberg.org/cache/epub/11/pg11.txt
    
    
Print the first 30 lines. (Check that it actually is Alice in Wonderland)

Use the String tokenizer to separate all the words within one line.

We have added a method to find out if the word is a very common one, like "the" or "to". Describe in your own words how this method works. 

You can measure the execution time
 

Which chapter mentions the teapot?

>> CHAPTER VII. A Mad Tea-Party
>> 
>> ...
>> This piece of rudeness was more than Alice could bear: she got up in great disgust, and walked off; the Dormouse fell asleep instantly, and neither of the others took the least notice of her going, though she looked back once or twice, half hoping that they would call after her: the last time she saw them, they were trying to put the Dormouse into the teapot.

Which is the word that is most often used?

* ignore the case of the words 

Take out often used words, like "the, a, ..." The result is little surprising. 

Check it by making a wordle. http://www.wordle.net

# More Exercises

### Task

Download a jar, add it to the design-time classpath, but forget it on the runtime classpath. What happens?

http://codingbat.com    