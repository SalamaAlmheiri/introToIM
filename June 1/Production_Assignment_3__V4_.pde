/* 
 Salama Almheiri
 Production Assignment 3
 June 1 2021
 Version 4
 */

triangle myTriangle;

class triangle {
  triangle(float a, float b, float c, float d) {
    a= random(200);
    b= random(80);
    c= random(45);
    d= random(50);
  }
  void drawShapes(float a, float b, float c, float d) {
    stroke(255);
    strokeWeight(random(4)); // random line thickness 1-4
    // 3 lines to make up the triangle
    // assignned random numbers from the a,b,c,d float
    line (a, b, c, d);
    line (a, b, a, a);
    line (c, d, a, a);
  }

  void movement() {
    // random, constant triangle generator
    drawShapes(random(400), random(400), random(400), random(400));
  }
} //end of class

void setup () {
  frameRate(20);
  size (400, 400);
  myTriangle = new triangle(100, 100, 100, 100);
}

void draw() {
  background (0, 0, 255);
  //myTriangle.drawShapes(); //It seems like this part was making my code not work, 
  //but I thought it was necessary so I am not sure why it kept giving me errors
  myTriangle.movement();
}
