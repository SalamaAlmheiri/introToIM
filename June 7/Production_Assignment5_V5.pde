/* 
 Salama Almheiri
 Production Assignment 5
 June 7 2021
 Version 5
 */

PImage photo; 

void setup() { 
  size(1000, 667); 
  photo = loadImage("beach.jpg");
  background (255);
}

void draw() { 
  loadPixels();
  for (int i = 0; i < width; i++) {
    float x= random (width);
    float y= random (height);
    color c= photo.get(int(x), int(y));
    fill (c);
    frameRate(10);
    noStroke ();
    rect (x, y, 20, 20);
  }
}
