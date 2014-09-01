---
layout: default
title:  Programming
---


# Why Programming?

Computers are complex machines, but they work using a very simple principle: 

* A control unit retrieves program instructions and data from the memory.
* The control unit processes the data according to the instructions in the arithmetic logic unit. An instruction can for instance add two numbers together.
* Data is written back to the memory or to special output.

![image](http://upload.wikimedia.org/wikipedia/commons/thumb/8/84/Von_Neumann_architecture.svg/330px-Von_Neumann_architecture.svg.png) 

The architecture above is called Von Neumann architecture, and is still the main principle for modern computers. Their complexity arises from optimizations of this simple principle.

In the early beginnings of computing, humans wrote the instructions for the control unit manually. This is obvious for the punch cards that were the medium of computers until the middle of the 1980 (wiki). These cards carried both data and the instructions.

The instructions are also called machine code.

http://en.wikipedia.org/wiki/Punch_card
http://en.wikipedia.org/wiki/Von_Neumann_architecture
http://en.wikipedia.org/wiki/Machine_code

Machine code instructions are executed by the central processing unit. The instructions are therefore on a very detailed, technical level that address problems that the arithmetic logic unit can solve. This is for example to take data from a specific address in the memory, shift all bits one to the right, and write the data back into the memory.

It is possible to express small programs in machine code instructions. But since the instructions are on such a detailed level, it is hard to express a program with the concepts that are in the problem domain of the program. 


Later, magnetic material was used to store programs and data, instead of the punch card made of paper. This increased how much data could be stored and how fast it could be acessed. On the software side, this made it possible to write more complex and larger programs and process more data.
This also means that it is not feasible anymore to write the machine code for programs manually. In machine code, it's very easy to make mistakes, and one needs many instructions to do simple operations. 

Therefore, higher-level programming languages were developed. The use of programing languages is made possible by a compiler. It takes a program and translates it into machine code, i.e., it "compiles" the program. During that process, it can also optimize the program, so that it can run faster and use less memory. (This is another reason why you probalbly won't write machine code on your own. It is unlikely that cou can produce more efficient code than a compiler if the program has a certain extend.)

But computers still work the same way. With instructions the control unit works on the data. 
