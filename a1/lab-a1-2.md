---
layout: default
title:  Java Exercises
---

# Lab A1: Java and Eclipse (Week 2)

## Exceptions - Part 1

**Task:**
Create an array and write some lines so that your program causes an `ArrayIndexOutOfBoundsException`. If you are unsure how to cause such an exception, read the [documentation of this error].

[documentation of this error]: http://docs.oracle.com/javase/7/docs/api/java/lang/ArrayIndexOutOfBoundsException.html

Copy and paste the code into your report. Then, correct the program so that the error does not happen anymore. Copy and paste also this code into your report. 

**Task:**
Create a very short program that causes a `NullPointerException`. (Use any type of object or class that you like.)
If you are unsure how to cause such an exception, read the [documentation of this error].

[documentation of this error]: http://docs.oracle.com/javase/7/docs/api/java/lang/NullPointerException.html

Copy and paste the code into your report. Then, correct the program so that the error does not happen anymore. Copy and paste also this code into your report.

**Task: (Advanced)**
It may seem annoying that the programming language causes an exception in these cases. Why, do you think, is it better that these exceptions happen, instead of the programm just continuing as if nothing has happened?


## Java Collections

**Task:**
Read the documentation for the [list] and the [set] interfaces. Both are collections of objects. State briefly in your own words what the most important differences between lists and sets are.

[list]: http://docs.oracle.com/javase/8/docs/api/index.html?java/util/List.html
[set]: http://docs.oracle.com/javase/8/docs/api/index.html?java/util/Set.html

**Task:**
Thinks of a couple of examples for cases where you would use lists and where you would use sets.

**Task:**
Why does the method `java.util.Collections.sort(List)` only accept lists as arguments, not sets?

<!--
**Task:**
The elements in the list are added in a certain order. Manipulate the sequence of the elements, so that you have another order.
(What makes sense here?) 
-->

## Fun with the Morse Code Map

Morse code translates letters and figures into signs that consist of short or long signals, so that they can be transmitted in various ways. Here's the morse code table:

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
    
The method `getCharacterToMorseCodeMap()` shown below produces a map object that contains the table from above. The map contains the characters (`a`,`b`,`c`,...) as keys, and their corresponding morse codes (`.-`, `-...`, `-.-.`,...) as values. The morse codes are stored as Strings.  

	public static Map<Character, String> getCharacterToMorseCodeMap() {
		Map<Character, String> morse = 
            new HashMap<Character, String>();
		morse.put('a',".-");
		morse.put('b',"-...");
		morse.put('c',"-.-.");
		morse.put('d',"-..");
		morse.put('e',".");
		morse.put('f',"..-.");
		morse.put('g',"--.");
		morse.put('h',"....");
		morse.put('i',"..");
		morse.put('j',".---");
		morse.put('k',"-.-");
		morse.put('l',".-..");
		morse.put('m',"--");
		morse.put('n',"-.");
		morse.put('o',"---");
		morse.put('p',".--.");
		morse.put('q',"--.-");
		morse.put('r',".-.");
		morse.put('s',"...");
		morse.put('t',"-");
		morse.put('u',"..-");
		morse.put('v',"...-");
		morse.put('w',".--");
		morse.put('x',"-..-");
		morse.put('y',"-.--");
		morse.put('z',"--..");
		
		morse.put('0',"-----");
		morse.put('1',".----");
		morse.put('2',"..---");
		morse.put('3',"...--");
		morse.put('4',"....-");
		morse.put('5',".....");
		morse.put('6',"-....");
		morse.put('7',"--...");
		morse.put('8',"---..");
		morse.put('9',"----.");
		return morse;
	} 

**Task:**
Use the map from above to encode a short message into morse code. Use the `get()` method of the map to retrieve the morse code for the characters. You can get an instance of the map object with the morse code in the following way:

	public static void main(String[] args) {
		Map<Character, String> morse = getCharacterToMorseCodeMap();
        ...
	}

The method below realizes another table. It is the inverse of the map from above. It can be used to decode morse code back into the characters.

	public static Map<String, Character> getMorseCodeToCharacterMap() {
		Map<String, Character> morse = 
            new HashMap<String, Character>();
		morse.put(".-",'a');
		morse.put("-...",'b');
		morse.put("-.-.",'c');
		morse.put("-..",'d');
		morse.put(".",'e');
		morse.put("..-.",'f');
		morse.put("--.",'g');
		morse.put("....",'h');
		morse.put("..",'i');
		morse.put(".---",'j');
		morse.put("-.-",'k');
		morse.put(".-..",'l');
		morse.put("--",'m');
		morse.put("-.",'n');
		morse.put("---",'o');
		morse.put(".--.",'p');
		morse.put("--.-",'q');
		morse.put(".-.",'r');
		morse.put("...",'s');
		morse.put("-",'t');
		morse.put("..-",'u');
		morse.put("...-",'v');
		morse.put(".--",'w');
		morse.put("-..-",'x');		
		morse.put("-.--",'y');
		morse.put("--..",'z');

		morse.put(".----",'1');
		morse.put("..---",'2');
		morse.put("...--",'3');
		morse.put("....-",'4');
		morse.put(".....",'5');
		morse.put("-....",'6');
		morse.put("--...",'7');
		morse.put("---..",'8');		
		morse.put("----.",'9');
		morse.put("-----",'0');
		return morse;
	}
	
**Task:**

The method below returns a String with a morse-encoded word. (Ehhh... easy to guess...). The morse code for each character in the word are separated by a whitespace character (" "). Try to build a short program that decodes the morse code and gets the word back. (This is a good place to use the StringTokenizer.)

	public static String getSecretWord() {
		return "-. - -. ..-";
	}
    
    
**Task:**

The method below contains a complete message. It is handled as an array of strings. Each element of the array is a word in the message. Write a short program that decodes the entire message.

	public static String[] getSecretMessage() {
		return new String[] {
				"--- --.",
				"-.. ..-",
				"... -.- .--- . -- -- . ...",
				". ..",
				"..-. --- .-.",
				"-.. .. -.",
				"-- --- .-.",
				"..-. --- . .-. ... -",
				"... .- .-",
				".-. . -. -. . .-.",
				"-.. ..-",
				"- .. .-..",
				"..-. .--- . .-.. .-.. ...",
				"-- .- .- -. . -.. ... ...- .. ...",
				"..",
				"- .-. .- ...- .-.. .",
				"--- -. -. . -.",
				"..-. --- .-.",
				".- -",
				"...- . .--- -.. .",
				".-. . -.",
				".--. .- .-",
				"..-. --- -. -. . -.",
				"-.- --- -- -- . .-.",
				".... .--- . --",
				"-- . -..",
				".-. . ...- . -.",
				".--. . .-.. ...",
				"..- - . -.",
				"-... --- . .-. ... .",
				"..- - . -.",
				"...- .. .-.. .-.. -",
				"--- --.",
				"- .. .-..",
				"... .-.. ..- - -",
				"-- . -..",
				".- .- .--. -. .",
				"--- . -.-- -. .",
				"-- . -. . .-.",
				"-.. ..-",
				".- -",
				"..-. .- .-",
				"-- . --.",
				"-... .. .-.. -.. -",
				".. -. -.",
				"-.. .",
				"...- .- . .-. ... - .",
				"... -.- .-. -.-- - . .-.. --- . --. -. .",
				"-. .- .-",
				".... ...- --- .-.",
				"- .-. .- ..-. ..-.",
				"-.. .",
				"... .- .-",
				"-.. . -.",
				"-... ..- -.- -.- . -."};		
	}

<!--
http://runeberg.org/peergynt/1a.html
-->

**Task (Super-Advanced)**
Another way to decode Morse signals into letters is via Dichotomic search, as shown at the end of http://en.wikipedia.org/wiki/Morse_code. Implement a method that uses this method of decoding morse signals, and use it for the transmission above. (Try to solve this task only if you have more time and energy left at the end of the lab.)  

<!--

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

-->