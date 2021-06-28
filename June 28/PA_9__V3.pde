/*
  Salama Almheiri
  Production Assignment 9
  June 28 2021
  Version 3
*/

import processing.serial.*;
Serial myPort;

int potY = 0;
int btnX = 0;
boolean onOff=false;
boolean onOff2=false;

void setup() {
  size(500, 500);
  printArray(Serial.list());
  String portname=Serial.list()[2];
  println(portname);
  myPort = new Serial(this,portname,9600);
  myPort.clear();
  myPort.bufferUntil('\n');

}

void draw() {
  //background(0);
  ellipse(btnX, potY, 10, 10); //80,80
  fill(0);
  if (mousePressed){
    if(mouseX<=width/2)
      onOff2=true;
    else
      onOff=true;
  }else{
    onOff=onOff2=false;
  }
}

void serialEvent(Serial myPort){
  String s=myPort.readStringUntil('\n'); //read untill the end of the line
  s=trim(s);
  if (s!=null){
    println(s);
    int values[]=int(split(s,','));
    if (values.length==2){
      btnX=(int)map(values[0],0, btnX, 0, width);
      potY=(int)map(values[1],0, potY, 0, height);
    }
  }
  myPort.write(int(onOff)+","+int(onOff2)+"\n"); //sends info to arduido
     //myPort.write(1+","+1+"\n");
}
