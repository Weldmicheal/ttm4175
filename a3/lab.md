---
layout: default
title:  Lab A3
---

# Programming the Raspberry Pi



## Testing the Berryclip

Download the test program for the Berryclip with the following command:

    wget http://item.ntnu.no/~kraemer/ttm4175/berrycliptest.jar

The command `wget` simply downloads a given file, here a jar file. This jar file contains a Java application that uses the Berryclip. To run the program, start Java:

    sudo java -jar berrycliptest.jar
    
The LEDs should light up one after another. After that, press the button, and you should hear a beep. (If the application does not run, something is wrong. You are officially allowed to panic.)



## Local Morse Code

**Task 1:**
Use the Button and the Buzzer, and build a system with that you can create Morse code, just locally on your own device.


**Task 2:**
Use the Morse Timer block. It meassures the length of the signals. With it, we can print out the `.` and `-` for each sign. 

(We will later use the Morse Timer block so we can send the morse signs over the network.

**Task 3:**
Explain the morse timer block.
Use the Morse Timer block. Make that each Short beep is exactly 200 ms and Each long beep 600 ms long. 


## Sending Morse Code to Yourself, via the Network

To test the network connection, we build a system that connects the button to the buzzer not directly, but via the network.

Listen to the same topic as you send the messages to. 
Make sure the topic is unique, so you do not hear the morse signals of other teams that use the same broker.


## Sending Morse Code from one Pi to Another

Find another group.

Build the receiver.
Build the sender.

Agree on a topic to use. 

Challenge each other by sending morse code, let the others decode.


Extra: Make three teams, one team is sending to the two others. Which team is faster to decide the message?