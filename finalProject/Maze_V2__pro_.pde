/* 
 Salama Almheiri
 Midterm Project
 July 3 2021
 Version 2
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
float posX;
float posY;

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

void draw()
{
  loadPixels(); 
  maze.loadPixels(); 
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;

      // pull out the 3 color components from a pixel.
      float r = red(maze.pixels[loc]);
      float g = green(maze.pixels[loc]);
      float b = blue(maze.pixels[loc]);

      // Set the display pixel to the image pixel
      pixels[loc] =  color(r, g, b);
    }
  }
  updatePixels();
  //println("x="+mouseX, "y="+mouseY);
  //  background(maze);
  //  maze.loadPixels();
  //  for (int i = 0; i < (width*height/2)-width/2; i++) {
  //  maze.pixels[i] = maze;
  //}
  //updatePixels();
  //  int loc = x + y*maze.width; //or y*width+x
  //  float r = red   (maze.pixels[loc]);
  //  float g = green (maze.pixels[loc]);
  //  float b = blue  (maze.pixels[loc]);
  //  dist(r, r, g, g, b, b);

  //background(maze); //makes the image maze as BG
  //get(pixels[y*width+x]);
  //updatePixels();

  // text message (game name and instructions) + change position!!!
  fill (250, 90, 80);
  textSize(20);
  textAlign (CENTER);
  //text(finish, 30, 15, 200, 100);
  fill (210, 70, 80);
  textSize(13);
  //text(instruction, 30, 45, 200, 100);

  image(sprites[direction][step], posX, posY);


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
