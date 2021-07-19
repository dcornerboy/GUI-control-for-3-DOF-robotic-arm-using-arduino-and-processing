# GUI control for 3 DOF Robotic arm using arduino and processing

The package is capable to control 3 servo motors using arduino through GUI.
Software:
1)Burn ino file code in arduino or else use example set for the servo firmata.
2)Use processing 64 or 32 according to your PC/laptop configuration.
3)Install ControlP5 and arduino firmata library in your processing IDE if you do not it.

Hardware:
1)Connect the servo of robotic arm to the pin 9,10 and 11 of your arduino.
2)Make common GND of arduino and all the three servos.
3)Supply VCC(+5V) to the servo for its working.


STEPS:
1)Once all the setup is based connect arduino to the PC/Laptop and select COM number of the USB port.
2)EDIT the number as displayed in the console of the processing IDE to the code(arduino = new Arduino(this, Arduino.list()[0], 57600);)(By default it is set to first COM dispalyed on the console)
3)Once connected you are ready to go on operation.


