import processing.serial.*;
import cc.arduino.*;
import controlP5.*;
ControlP5 controlP5;
Arduino arduino;

int Joint1 = 90;
int Joint2 = 90;
int Joint3 = 90;

PFont f;
boolean overButton = false;

void setup() {
size(400,400);
println(Arduino.list());
arduino = new Arduino(this, Arduino.list()[2], 57600);



for (int i = 0; i <= 13; i++)
arduino.pinMode(i, Arduino.OUTPUT);

controlP5 = new ControlP5(this);
f = createFont("algerian",200,true); 
PFont p = createFont("Verdana",10); 
ControlFont font = new ControlFont(p);
controlP5.setFont(font);
 controlP5.setColorForeground(0xff345beb);
 controlP5.setColorBackground(0xff4feb34);
controlP5.addSlider("Joint1",0,180,Joint1,20,200,180,20);
controlP5.addSlider("Joint2",0,180,Joint2,20,250,180,20);
controlP5.addSlider("Joint3",0,180,Joint3,20,300,180,20);




}


void draw() {
background(0);
textFont(f,30);
fill(255);
text("GUI Control for 3-DOF",40,80); 
text("Robotic ARM",110,140); 

if (overButton == true) {
    noFill();
  } else {
    fill(255);
  }

rect(300, 250, 95, 35);
textFont(f,10);
text("Source/Contact",303,275); 



arduino.analogWrite(9, Joint1);
arduino.analogWrite(10, Joint2);
arduino.analogWrite(11, Joint3);
}




void mousePressed() {
  if (overButton) { 
    link("http://www.processing.org");
    link("https://www.linkedin.com/in/piyush-tailor-b85ab9a7/");
  }}

void mouseMoved() { 
  checkButtons(); 
}
  
void mouseDragged() {
  checkButtons(); 
}

void checkButtons() {
  if (mouseX > 300 && mouseX < 395 && mouseY > 250 && mouseY <275) {
    overButton = true;   
  } else {
    overButton = false;
  }
}  
