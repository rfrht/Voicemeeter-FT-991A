# Voicemeeter Banana and FT-991/A
Wanting to spice up your shinny FT-991/A? What about connecting your computer to your 991/A and using your computer to *process your audio* without extra hardware or even cost?

What about you controlling your FT-991/A like this:

[![Screenshot, PY2RAF's VoiceMeeter and FT-991/A integration](/images/scaled-screenshot-voicemeeter-ft991a.jpg)](/images/screenshot-voicemeeter-ft991a.png)

*Click to enlarge - Screenshot, PY2RAF's VoiceMeeter and FT-991/A integration*

And without rocket science and no solder iron or complex software programming?

Like a boss, right? Let's get started.

## Connecting stuff together
This is the high-level diagram of the connections in my setup. Obviously you don't need all of them - Only the USB CAT & Audio cable is required. 

![Wiring diagram - FT-991/A and VoiceMeeter Banana](/images/ft-991-a-Connection-Diagram-2.png)

*Connection Diagram*

In my setup I don't use the PTT mic - matter of fact I have removed/boxed it. I use a Sennheiser SC-60 USB headset plugged to the laptop. I like this headset because it is lightweight, super comfortable for wearing in long periods and the foam cushion instead of those plastic or faux leather that covers the ear - I feel those very uncomfortable as they heats up my ears (and I live in a tropical country).

The audio is then sent to the VoiceMeeter, which undergoes a light transformation and compression, and is then fed to the FT-991A.

The VoiceMeeter channel, setup and configuration is described at [this QRZ thread](https://forums.qrz.com/index.php?threads/going-software-defined.650584/) - So this should be your stop number one. There are a number of menu clauses that should be checked too, so please visit it. If you have any questions, please do ask in the QRZ thread.

To signal the TX mode I use either the footswitch (99% of time) or if I'm real lazy, VOX mode.

After you got the ball rolling in your Voice Meeter and FT-991-A, then it is time to setup your macros.

In the QRZ thread I also gave a glimpse on how to configure the macro buttons.

## Creating your macros

Ensure to take a look at the [Youtube video](https://www.youtube.com/watch?v=UWEsG-L3iVU) to learn how to create your macro buttons.

You will have to know what's your COM port number. In my case, it is COM4.

I have provided my batch macro files in in [/auto](/auto) folder.

### A look into the macros.

Let's dissect one of them. For example, `modo-cq-on.cmd`.
This macro is triggered when you push the button and engage the CQ mode - In this button I want to:

* Engage VOX mode
* Downgrade the TX power to 50W
* Mute my microphone.

The macro button has the following commands:

~~~
System.Execute("c:\users\rodrigo\auto\modo-cq-on.cmd");
Strip[1].Mute=1;
~~~

So, it will invoke the batch file `c:\users\rodrigo\auto\modo-cq-on.cmd` and then mute the microphone which is in Strip 1.

Now, checking the content of the batch file:

~~~
@echo off
mode COM4 BAUD=38400 PARITY=n DATA=8
echo PC050;VX1; > COM4
~~~

* The line `mode COM4 BAUD=38400 PARITY=n DATA=8` configures my `COM4` port to 38.400 BPS (the value must match the Menu Item `031 - CAT RATE`)
* The line `echo PC050;VX1; > COM4` actually sends two commands to the radio: `PC050;` sets the TX power to 50 Watts and `VX1;` instructs the radio to enable the VOX mode.

Conversely, when leaving the CQ mode we have the following macro:

~~~
Strip[1].Mute=0;
System.Execute("c:\users\rodrigo\auto\modo-cq-on.cmd");
~~~

Which will unmute the microphone and execute `modo-cq-off.cmd`. Which we have:

~~~
mode COM4 BAUD=38400 PARITY=n DATA=8
echo PC100;VX0; > COM4
~~~

* The first line was already explained; and
* The CAT commands `echo PC100;VX0; > COM4` traslates to `PC100;` restoring the power back to 100W and `VX0;` disabling the VOX mode.

For more information on the CAT command set check the [Yaesu FT-991A CAT command set manual]().

Hope this is of help!

73 de PY2RAF.
