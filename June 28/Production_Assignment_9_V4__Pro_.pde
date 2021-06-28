/*
  Salama Almheiri
 Production Assignment 9
 June 28 2021
 Version 4
 */

import processing.serial.*;
Serial myPort;

int valueL;
int valueR;
int valueKnob; //= 0;
float posX;
float posY;

void setup() {
  size(500, 500);
  printArray(Serial.list());
  String portname=Serial.list()[2];
  println(portname);
  myPort = new Serial(this, portname, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');
  posX= width/2;
  posY= height/2;
}

void draw() {

  ellipse(posX, posY, 2, 2);
  stroke(0);
  fill(255);

  if (valueL== 1) { // moves left when green button pressed
    posX = posX -1;
  }

  if (valueR== 1) { // moves right when yellow button pressed
    posX = posX +1;
  }

  if (valueKnob < 400) {//turned clockwise= moves up
    posY = posY -1;
  }

  if (valueKnob > 623){//turned anticlockwise= moves down
    posY = posY +1;
} 

}

void serialEvent(Serial myPort) {
  String s=myPort.readStringUntil('\n');
  s=trim(s);
  if (s!=null) {
    //println(s); 
    int values[]=int(split(s, ','));
    if (values.length==3) { 
      valueL=values[0]; 
      valueR=values[1]; 
      valueKnob= values[2];
      println(valueL);
      println(valueR);
      println(valueKnob);
    }
  }
}
