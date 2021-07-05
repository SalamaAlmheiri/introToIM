/* 
 Salama Almheiri
 Midterm Project
 July 5 2021
 Version 3
 Totoro Forest Maze Game
 */

import processing.serial.*;
Serial myPort; 

PImage maze;
PImage spritesheet;
PImage[][] sprites;
//String instruction= "Find Totoro in the Forest/ Press the buttons to move through the forest maze";
//String finish= "Success!! Press space key to play again";
//mention which button is which??


int direction = 1;
int step = 0;
int speed = 3;
int x;
int y;

int valueU;
int valueD;
int valueL;
int valueR;
int posX; //or float??
int posY; //or float??

void setup()
{
  size(700, 700);
  smooth();
  frameRate(60);

  printArray(Serial.list());
  String portname=Serial.list()[2];
  println(portname);
  myPort = new Serial(this, portname, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');
  posX= 131;
  posY= 660;

  maze= loadImage("Maze.jpg");
  spritesheet= loadImage("wTotoro3 copy.png");
  sprites = new PImage[4][3];

  int w = spritesheet.width/3;
  int h = spritesheet.height/4;

  for (int y=0; y < 4; y++) {
    for (int x=0; x< 3; x++) {
      sprites[y][x] = spritesheet.get(x*w, y*h, w, h);
    }
  }
  x = width/2;
  y = height/2;
  imageMode(CENTER);
}

void draw() { 

  // text message (game name and instructions) + change position!!!
  fill (250, 90, 80);
  textSize(20);
  textAlign (CENTER);
  //text(finish, 30, 15, 200, 100);
  fill (210, 70, 80);
  textSize(13);
  //text(instruction, 30, 45, 200, 100);

  background(maze);
  maze.loadPixels(); 
  int loc = posX + posY*width;  
  float r = red(maze.pixels[loc]);
  float g = green(maze.pixels[loc]);
  float b = blue(maze.pixels[loc]);
  //color(r, g, b);
  //RGB (30,68,53)

  // How green is the image where the character is?   
  float howGreen = dist (0, r, 255, g, 0, b); // dist takes as parameters (x1, x2, y1, y2, z1, z2)    
  //println(howGreen); //312.72034 (path)/ 215.2394 (wall)

  if (howGreen < 312.72034) {  
    println(" we are on the wall");
  } else {
    println("we are not on the wall");
    if (valueU== 1) { // moves up when blue button pressed
      posY = posY -1;
      direction = 3;
      y-=speed;
    }

    if (valueD== 1) { // moves down when green button pressed
      posY = posY +1;
      direction = 0;
      y+=speed;
    }

    if (valueL== 1) { // moves left when yellow button pressed
      posX = posX -1;
      direction = 1;
      x-=speed;
    }

    if (valueR== 1) { // moves right when red button pressed
      posX = posX +1;
      direction = 2;
      x+=speed;
    }
    if (frameCount%speed==0) {
      step = (step+1) % 3; //add +1 to the step to move one
    }
  }
  image(sprites[direction][step], posX, posY);
}

void serialEvent(Serial myPort) {
  String s=myPort.readStringUntil('\n');
  s=trim(s);
  if (s!=null) {
    //println(s); 
    int values[]=int(split(s, ','));
    if (values.length==4) { 
      valueU=values[0]; 
      valueD=values[1]; 
      valueL=values[2]; 
      valueR=values[3]; 
      print(valueU);
      print(valueD);
      print(valueL);
      println(valueR);
    }
  }
}
