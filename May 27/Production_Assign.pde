/*
Salama Almheiri
 Production Assignment
 May 27 2021
 */

float x=0;

void setup() {
  size (400, 400);
}

void draw() {
  background(119, 112, 112);
  stroke (0);

  //Circle 1 loop
  x=0;
  while (x< width) {
    x=x+15;
    noFill();
    stroke(187, 52, 52);
    ellipse(x, 70, 150, 150);
  }

  // Circle 2 loop
  x=0;
  while (x< width) {
    x=x+16;
    noFill();
    stroke(195, 73, 73);
    ellipse(x, 150, 110, 110);
  }

  // Circle 3 loop
  x=0;
  while (x< width) {
    x=x+15;
    noFill();
    stroke(241, 157, 157);
    ellipse(x, 220, 90, 90);
  }

  // Circle 4 loop
  x=0;
  while (x< width) {
    x=x+20;
    noFill();
    stroke(240, 191, 191);
    ellipse(x, 290, 110, 110);
  }

  // Circle 5 loop
  x=0;
  while (x< width) {
    x=x+25;
    noFill();
    stroke(250, 221, 221);
    ellipse(x, 370, 100, 100);
  }
  
  // Circle 6 loop
  x=0;
  while (x< width) {
    x=x+30;
    noFill();
    stroke(250, 221, 221);
    ellipse(x, 410, 80, 80);
  }
}
