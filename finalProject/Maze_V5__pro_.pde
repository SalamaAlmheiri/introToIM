/* 
 Salama Almheiri
 Midterm Project
 July 6 2021
 Version 5
 Totoro Forest Maze Game
 */

import processing.serial.*;
Serial myPort; 
import processing.sound.*;
SoundFile win;
SoundFile bgMusic;

int gameState; //0, instructions; 1,playing; 2, win

PImage maze;
PImage instructions;
PImage won;
PImage spritesheet;
PImage[][] sprites;

int direction = 1;
int step = 0;
int speed = 3;

int valueU;
int valueD;
int valueL;
int valueR;
int posX;
int posY;
int prevX;
int prevY;


void setup()
{
  gameState = 0; // set to instruction 'page'
  size(700, 700);
  smooth();
  frameRate(60);

  win = new SoundFile (this, "sound copy.wav"); //win2.wav
  bgMusic = new SoundFile (this, "BG.wav");
  bgMusic.loop();

  printArray(Serial.list());
  String portname=Serial.list()[2];
  println(portname);
  myPort = new Serial(this, portname, 9600);
  myPort.clear();
  myPort.bufferUntil('\n');
  posX= 131;
  posY= 660;
  prevX = posX;
  prevY = posY;

  maze= loadImage("Maze2.jpg");
  instructions= loadImage("Instructions2.JPG");
  won= loadImage("won.JPG");
  spritesheet= loadImage("wTotoro3 copy.png");
  sprites = new PImage[4][3];

  int w = spritesheet.width/3;
  int h = spritesheet.height/4;

  for (int y=0; y < 4; y++) {
    for (int x=0; x< 3; x++) {
      sprites[y][x] = spritesheet.get(x*w, y*h, w, h);
    }
  }
  imageMode(CENTER);
}

void draw() { 
  //println("x="+mouseX, "y="+mouseY);
  if (gameState==0) {
    background(255);
    image(instructions, width/2, height/2, 600, 400  );
    myPort.write('0');
    if (valueU== 1) {
      gameState=1;
    }
  } else if (gameState==1) {
    background(maze);
    maze.loadPixels(); 
    int loc = posX + posY*width;  
    float r = red(maze.pixels[loc]);
    float g = green(maze.pixels[loc]);
    float b = blue(maze.pixels[loc]);

    float howGreen = dist (0, r, 255, g, 0, b);

    if (howGreen < 312.72034) {
      println(" we are on the wall");
      posX = prevX; // resets posX to it position from last frame
      posY = prevY; // resets posY to it position from last frame
    } else {
      prevX = posX;
      prevY = posY;
      println("we are not on the wall");
      if (valueU== 1) { // moves up when blue button pressed
        posY = posY -1;
        direction = 3;
      }

      if (valueD== 1) { // moves down when green button pressed
        posY = posY +1;
        direction = 0;
      }

      if (valueL== 1) { // moves left when yellow button pressed
        posX = posX -1;
        direction = 1;
      }

      if (valueR== 1) { // moves right when red button pressed
        posX = posX +1;
        direction = 2;
      }
      if (frameCount%speed==0) {
        step = (step+1) % 3; //add +1 to the step to move one
      }
      if ((posX <= 170) && (posY <=100)) {
        gameState=2;
      }
    }
    image(sprites[direction][step], posX, posY);
  } else if (gameState==2) {
    background(255);
    image(won, width/2, height/2, 600, 400);
    myPort.write('1');
    myPort.write('2');
    //bgMusic.stop();
    win.play();
    if (valueR== 1) {
      gameState=0;
      posX= 131;
      posY= 660;
      prevX = posX;
      prevY = posY;
    }
  }
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
