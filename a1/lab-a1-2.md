---
layout: default
title:  Java Exercises
---

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