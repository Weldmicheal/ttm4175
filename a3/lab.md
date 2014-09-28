---
layout: default
title:  Lab A3
---

# Programming the Raspberry Pi


## Debugging MQTT

During the lab you will send and receive messages via MQTT. To find out, if messages are sent, you can install an application that lets you subscribe to MQTT topics. In this way you will know if your application sends messages as it should. One such application is [MQTTfx], which you can download from [here]. (Works for Mac or Windows.)

[MQTTfx]: http://www.jensd.de/wordpress/?p=1423
[here]: http://www.jensd.de/apps/mqttfx/

To use the application, simply add the MQTT broker you are using, and subscribe to the topics you are working with.


## Using the MQTT Block

### Starting Robust MQTT

Name of the broker, subscribe to topics.

### Sending a Message

Message payload, quality of service.

### Printing a Received Message

Get a string from the payload
Write the topic it was sent to



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
Use the Button and the Buzzer, and build a system with that you can create Morse code, just locally on your own device. Whenever you press down the button, the buzzer should beep.

Hint: Try to build the application on your own. If you have no idea how it should look like, have a glance [here][here2].

[here2]: images/local-morse-code.png

**Task 2:**
Extend the system with the Button and the Buzzer, and add an LED. The LED should light up whenever the button is pressed, together with the buzzer.


**Task 3:**
Use the Morse Timer block. It meassures the length of the signals. With it, we can print out the `.` and `-` for each sign. 

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

(We will later use the Morse Timer block so we can send the morse signs over the network.)

<!--**Task 3:**
Explain the morse timer block.-->


## Sending Morse Code to Yourself, via the Network


To test the network connection, we build a system that connects the button to the buzzer not directly, but via the network.


**Task:**


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