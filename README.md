# Voicemeeter Banana and FT-991/A

## [Video](https://www.youtube.com/watch?v=UWEsG-L3iVU)
Wanting to spice up your shinny FT-991/A? What about connecting your computer to your 991/A and using your computer to *process your audio* without extra hardware or even cost?

What about you controlling your FT-991/A like this:

[![Screenshot, PY2RAF's VoiceMeeter and FT-991/A integration](/images/screenshot-voicemeeter-ft991a.jpg)](/images/screenshot-voicemeeter-ft991a.png)

*Click to enlarge - Screenshot, PY2RAF's VoiceMeeter and FT-991/A integration*

And without rocket science and no solder iron or complex software programming?

Like a boss, right? Let's get started.

## How to do it?
Check the [Wiki](https://github.com/rfrht/Voicemeeter-FT-991A/wiki)

## Connecting stuff together
This is the high-level diagram of the connections in my setup. Obviously you don't need all of them - Only the USB CAT & Audio cable is required. 

![Connection diagram - FT-991/A and VoiceMeeter Banana](/images/ft-991-a-Connection-Diagram-2.png)

In my setup I don't use the PTT mic - matter of fact I have removed/boxed it. I use a Sennheiser SC-60 USB headset plugged to the laptop. I like this headset because it is lightweight, super comfortable for wearing in long periods and the foam cushion instead of those plastic or faux leather that covers the ear - I feel those very uncomfortable as they heats up my ears (and I live in a tropical country).

The audio is then sent to the VoiceMeeter, which undergoes a light transformation and compression, and is then fed to the FT-991A.

The VoiceMeeter channel, setup and configuration is described at [the wiki page](https://github.com/rfrht/Voicemeeter-FT-991A/wiki) - So this should be your stop number one. There are a number of Radio's Setup configuration clauses that should be checked too, so please visit the above article. If you have any questions, please QRZ and drop me an e-mail - or just file an Github issue.

To signal the TX mode I use either the footswitch (99% of time) or if I'm real lazy, VOX mode.

After you got the ball rolling in your Voice Meeter and FT-991-A, then it is time to setup your macros.

In the QRZ thread I also gave a glimpse on how to configure the macro buttons.



## Creating your macros

Ensure to take a look at the [Youtube video](https://www.youtube.com/watch?v=UWEsG-L3iVU) to learn how to create your macro buttons.

**tl;dr:**
1. Open the Macro Buttons app
2. Right-click the desired button
3. This is how you configure a pushbutton:
    
    ![VoiceMeeter Pushbutton configuration](/images/howto-pushbutton.png)
    
4. This is how you configure a two-state (on/off) button:
    
    ![VoiceMeeter Two Position Button configuration](/images/howto-2-positions.png)
    
I have provided my batch macro files in in [/auto](/auto) folder. These are used for sending the CAT commands to the radio. **Ensure** to store the `auto` folder in your Home directory (`c:\users\your-username\auto`), so you can take advantage of the existing automation. 

### The initial setup
You need know what's your radio's CAT COM port number. In my case, it is COM4.

Your radio **COM** port and speed is defined in `setup.cmd` file. In the below example:

~~~
REM ### **IF** YOUR COM PORT NUMBER IS GREATER
REM ### THAN 9, USE THE FOLLOWING SYNTAX:
REM ### FOR EXAMPLE, IF YOUR COM PORT IS COM22:
REM ### set COMPORT=\\.\COM22

REM ### CONFIGURE YOUR COM PORT HERE

set COMPORT=COM4

REM ### THE BELOW BAUD RATE MUST MATCH
REM ### YOUR TRANSCEIVER BAUD RATE!

mode %COMPORT% BAUD=38400 PARITY=n DATA=8 > NUL
~~~

We have the configuration for a transceiver in the COM4 port, and using 38400 bps speed. It is **crucial** to match these values to your transceiver settings!

Also, pay attention on the above note if you need to use COM ports with values greater than COM9.

### A look into the macros.
Let's dissect one of them. For example, `modo-cq-on.cmd`.
This macro is triggered when you push the button and engage the CQ mode - In this button I want to:

* Engage VOX mode
* Reduce the TX power to 50W
* Mute my headset.

The macro button has the following VoiceMeeter commands:

~~~
System.Execute("%USERPROFILE%\auto\modo-cq-on.cmd");
Strip[1].Mute=1;
~~~

So, it will invoke the batch file `c:\users\your-username\auto\modo-cq-on.cmd` and then mute the headset's microphone - which is in VoiceMeeter's Strip 1.

Now, checking the content of the batch file:

~~~
@echo off
call %USERPROFILE%\auto\setup.cmd
SET CAT=PC050;VX1;
echo| set /p="%CAT%"> %COMPORT%
~~~

* The line `call %USERPROFILE%\auto\setup.cmd` calls the setup batch file and configures your COM port, preparing for it for the communication.
* The line `SET CAT=PC050;VX1;` defines the CAT command to be sent to the radio. In this example, it is actually sending **two** commands to the radio: `PC050;` sets the TX power to 50 Watts and `VX1;` instructs the radio to enable the VOX mode.

    Every CAT command in the FT-991/A line are terminated by the semicolon. No need to send `enter`, newline or something like that. If you do, it will fail the CAT command

* And finally, the line `echo| set /p="%CAT%"> %COMPORT%` sends the CAT command to your radio.

Conversely, when leaving the CQ mode we have the following macro:

~~~
Strip[1].Mute=0;
System.Execute("%USERPROFILE%\auto\modo-cq-off.cmd");
~~~

Which will unmute the microphone and execute `modo-cq-off.cmd`. Which we have:

~~~
call %USERPROFILE%\auto\setup.cmd
SET CAT=PC100;VX0;
echo| set /p="%CAT%"> %COMPORT%
~~~

* The first line was already explained; 
* The CAT commands `PC100;VX0;` traslates to `PC100;` restoring the power back to 100W and `VX0;` disabling the VOX mode and;
* Finally sending the command to the radio.

### Reset my radio to my preferred settings!
This is an example of the possibilities that the CAT command set provides you. I have configured a Macro button to tune to my favourite QRG with my favourite settings. So let's take a look. I have depicted the functionality and its respective CAT command:

~~~
Freq. 7.130     FA007130000;
Mode LSB        MD01;
NB on           NB01;
DNF off         BC00;
DNR off         NR00;
Contour off     CO000000;
BW 3200         SH021;
AGC slow        GT03;
Att off         RA00;
Preamp IPO      PA00;
Proc on         PR01;
TX power 100    PC100;
Meter PO        MS2;
VOX off         VX0;
~~~

Which resulted in this batch file:

~~~
@ECHO off
call %USERPROFILE%\auto\setup.cmd
SET CAT=FA007130000;MD01;NB01;BC00;NR00;CO000000;SH021;GT03;RA00;SH021;GT03;RA00;PA00;PR01;PC100;MS2;VX0;
echo| set /p="%CAT%"> %COMPORT%
~~~

### Can you share your VoiceMeeter button config?
For sure! Check the `macro-buttons.xml` in the `auto` folder - This is my current button set and it also makes use of environment variables, so you skip the hassle to edit the buttons and specify your path.

All you have to do is open Macro Buttons, click the top-right icon, select `Load Button Map` and then load the `macro-buttons.xml` file.

### A *NICE* Feature: Different button maps!
This expands enormously VoiceMeeter functionality, without having to keep an enormous Button Map opened - Now VoiceMeeter ([as of version 2.0.5.1](https://forum.vb-audio.com/viewtopic.php?t=498#p3060)) can **load button maps**. So if you need a specific subset of functions, just create a new button map (remember to save your current!) and load it using the command:

~~~
Load("c:\directory\new-button-map.xml");
~~~

Works perfectly. For example, I removed the CQ buttons that I had in the main button map and moved them to a map of its own:

[![Screenshot, VoiceMeeter Main Button Map](/images/macro-buttons-main-map.jpg)](/images/macro-buttons-main-map.png)

*Main Button Map*

[![Screenshot, VoiceMeeter Main Button Map](/images/macro-buttons-cq-map.jpg)](/images/macro-buttons-cq-map.png)

*CQ Button Map*

**Note**: As of VoiceMeeter version 2.0.5.3, the `Load()` function does not expand %USERPROFILE% env setting, so be sure to specify the explicit file path. [Reported in VoiceMeeter forum](https://forum.vb-audio.com/viewtopic.php?t=498#p3060).

## Reference material
For more information on the CAT command set check the [Yaesu FT-991A CAT command set manual](https://www.yaesu.com/downloadFile.cfm?FileID=13370&FileCatID=158&FileName=FT%2D991A%5FCAT%5FOM%5FENG%5F1711%2DD.pdf&FileContentType=application%2Fpdf).

[VoiceMeeter's Macro Command set](https://www.vb-audio.com/Voicemeeter/VoicemeeterBanana_UserManual.pdf) - There's a number ot tricks over there. One of the nicest that I did was notching power line hum and its harmonics up to the 4th one.

Enjoy! Explore! Be adventurous!

## Bonus points - Wiring, etc.
Here is how I have wired the FT-991A for my silly footswitch and the TX timer (more details on timer [here](https://github.com/rfrht/Yaesu-OLED-TX-Timer)):

[![Wiring Diagram](/images/scaled-ft-991-a-port-wiring.png)](/images/ft-991-a-port-wiring.png)

*Wiring diagram - click to enlarge*

How does the real deal looks like:

[![Actual FT-991A Wiring](/images/scaled-ft-991-a-picture-wired.jpg)](/images/ft-991-a-picture-wired.jpg)

*PY2RAF and his abused FT-991A*

![73s de PY2RAF](https://rf3.org:8443/q/wink-vm.png)

That's it! Happy Hacking! 73s de PY2RAF.
