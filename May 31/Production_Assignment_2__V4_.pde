/* 
 Salama Almheiri
 Production Assignment 2
 May 31 2021
 Version 4
 */

float a= random(200);
float b= random(80);
float c= random(45);
float d= random(50);

void setup() {
  size(400, 400);
  background(0, 0, 255);
  frameRate(30);
  drawShape(a, b, c, d);
}

void draw() {
  // random, constant triangle generator
  drawShape(random(400), random(400), random(400), random(400));
}

void drawShape(float a, float b, float c, float d) { //draws a triangle
  stroke(255);
  // 3 lines to make up the triangle
  // assignned numbers from the a,b,c,d float
  line (a, b, c, d);
  line (a, b, a, a);
  line (c, d, a, a);
}
