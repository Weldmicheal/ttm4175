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

Use the Import function from the Blocks View, and import the library **Berryclip for Raspbery Pi**.
Also import the project **no.ntnu.ttm4175.morse**.


**Task 1:**
Use the Button and the Buzzer, and build a system with that you can create Morse code, just locally on your own device. Whenever you press down the button, the buzzer should beep. Take a screenshot of the application, and explain how it works.

Hint: Try to build the application on your own. If you have no idea how it should look like, have a glance [here][here2].

[here2]: images/local-morse-code.png


**Task 2:**
Extend the system with the Button and the Buzzer, and add an LED. The LED should light up whenever the button is pressed, together with the buzzer.
Take a screenshot of the application, and explain how it works.


**Task 3:**
Use the Morse Timer block. It meassures the length of the signals. Build an application that prints out a `.` and `-` for each sign. 
Take a screenshot of the application, and explain how it works. 

Hint: Try to build the application on your own. If you have no idea how it should look like, have a glance [here][here3].

[here3]: images/local-morse-code-2.png


The methods should look like this:

	public void printShort() {
		System.out.print(".");
	}

	public void printLong() {
		System.out.print("-");
	}
	
	public void printBreak() {
		System.out.print(" ");
	}


<!--**Task 3:**
Explain the morse timer block.-->


## Sending Morse Code to Yourself, via the Network

To test the network connection, we build a system that connects the button to the buzzer not directly, but via the network.

**Read the hints on using MQTT in the sidebar.**

**Task 4:**
Use the block *Robust MQTT* from the MQTT library. Build an application that works in the following way:

* At startup, Robust MQTT connects to the broker `dev.bitreactive.com`
* Subscribe to a topic that you choose yourself. (Use a unique topic, otherwise you'll receive messages from the other teams.)
* Add a method to the output of Robust MQTT that prints the received message
* Whenever you press the button, ring the buzzer and send a message with some content
* See how the message is received and printed out

Hints:

* Use the MQTT.fx application and see if you are actually sending a message
* You may want to add an LED that lights green whenever Robust MQTT says it is `ready`

Take a screenshot of the application, and explain how it works. 


**Task 5:**
Extend the application from Task 4. Use the Morse Timer so that you can distinguish the between `-` and `.`, and send messages via MQTT that contain `-` and `.` in their payload.

Hints:

* A merge node can be handy here!





Hint: Try to build the application on your own. If you have no idea how it should look like, [have a glance here].

[have a glance here]: images/morse-code-3.png


    import com.bitreactive.library.mqtt.MQTTConfigParam;
    import com.bitreactive.library.mqtt.MQTTMessage;
    import com.bitreactive.library.mqtt.robustmqtt.RobustMQTT.Parameters;



	public String topic;
	public static String SHORT_MESSAGE = ".";
	public static String LONG_MESSAGE = "-";
	
	public MQTTMessage createShortMessage() {
		byte[] bytes = new String(SHORT_MESSAGE).getBytes();
		MQTTMessage message = new MQTTMessage(bytes, topic);
		return message;
	}

	public MQTTMessage createLongMessage() {
		byte[] bytes = new String(LONG_MESSAGE).getBytes();
		MQTTMessage message = new MQTTMessage(bytes, topic);
		return message;
	}

	public String extractMessage(MQTTMessage m) {
		return new String(m.getPayload());
	}

	public void unknownString(String s) {
		logError("Unexpected string received: " + s);
	}

	public Parameters createSetup() {
		MQTTConfigParam m = new MQTTConfigParam("dev.bitreactive.com");
		topic = "t" + Math.random();
		m.addSubscribeTopic(topic);
		Parameters p = new Parameters(m, 5);
		return p;
	}

Listen to the same topic as you send the messages to. 
Make sure the topic is unique, so you do not hear the morse signals of other teams that use the same broker.


## Sending Morse Code from one Pi to Another

Find another group.

Build the receiver.
Build the sender.

Agree on a topic to use. 

Challenge each other by sending morse code, let the others decode.


Extra: Make three teams, one team is sending to the two others. Which team is faster to decide the message?