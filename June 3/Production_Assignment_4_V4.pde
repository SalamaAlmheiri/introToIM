/* 
 Salama Almheiri
 Production Assignment 4
 June 3 2021
 Version 4
 Concept: The concept of this code is to generate random (rectangle) shapes with 
 different colors and see what type of abstract looking art it could create.
 */

rectangle myRectangle;

class rectangle {
  rectangle (float a, float b, float c, float d) {
    a= random(400);
    b= random(600);
    c= random(45);
    d= random(50);
  }
  void drawShapes(float a, float b, float c, float d) {
    stroke (random(255), random(255), random(255)); //random rectangle color outline
    strokeWeight(random(4)); // random line thickness 1-4
    fill (random(255), random(255), random(255));
    pushMatrix();
    translate (random(600), random(600));
    rotate (radians(45));
    rect (a, b, c, d); // rectangle assigned random numbers from the a,b,c,d float
    popMatrix();
  }

  void movement() {
    // random, constant rectangle generator
    drawShapes(random(400), random(600), random(400), random(400));
  }
} //end of class

void setup () {
  frameRate(15);
  size (400, 600);
  myRectangle = new rectangle (100, 100, 100, 100);
}

void draw() {
  myRectangle.movement();
}
