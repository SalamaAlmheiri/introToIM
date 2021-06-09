/* 
 Salama Almheiri
 Midterm Project
 June 9B 2021
 Version 1
 */

PImage photo;

void setup() { 
  size(500, 800); 
  photo = loadImage("Banksy.jpg");
  //photo = loadImage("");
  background (255);
}

void draw () {
  image(photo, 0, 0, 500, 800);
}
