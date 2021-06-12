/* 
 Salama Almheiri
 Midterm Project
 June 12 2021
 Version 5
 */

PImage banksy;
PImage balloonImg;
Balloon b1;
int balloonX;
int balloonY;
int radius;
int balloonSpeed;
//Balloon b1= new Balloon (0, 0, 0, 0);
String title= "Balloon Girl ";
String instruction= "Make the balloon fly away to the correct position by using the 4 arrows";
//PFont font= createFont ("monaco", 50);

void setup() {
  background (255);
  size(500, 800); 
  smooth();
  frameRate(60);

  banksy = loadImage("Banksy.jpg");
  balloonImg = loadImage("balloon.JPG");
  b1= new Balloon (0, 0, 0, 0);
}

void draw () {
  //background (0); //(IDK where to put background)
  image(banksy, 0, 0, 500, 800); //Draws background image (girl)
  b1.display();
  //b1.movement();
  
    //textFont (font);
    //I placed the text in draw becasue i want it to appear above the image
  fill (250, 90, 80);
  textSize(20);
  textAlign (CENTER);
  text(title,30, 15, 200, 100);
  fill (210, 70, 80);
  textSize(13);
  text(instruction,30, 45, 200, 100);
}

class Balloon { 
  //balloon class
  //int balloonX;
  //int balloonY;
  //int radius;
  //int balloonSpeed;

  //(how do I declare this constructor (Balloon)? (Do I need to do that?))
  Balloon (int balloonX, int balloonY, int radius, int balloonSpeed) {
    balloonX = width/2;
    balloonY = height/2;
    radius = 25;
    balloonSpeed = 5;
    //(Why is this not working when its not in (display)? Where am I supposed to put it??)
  }
  void display () {
    balloonX = width/2;
    balloonY = height/2;
    radius = 25;
    balloonSpeed = 5;
  
    fill (210, 70, 80);
    noStroke();
    ellipse(balloonX, balloonY, radius*2, radius*2); 
    imageMode (CENTER);
    image(balloonImg, balloonX, balloonY, 126, 175);
  }

  //void keyPressed() // (Should i be using this void or the other one?)
  //{
  //void movement() {
  //  if (keyPressed) {
      void keyPressed()
{
      if ( (keyCode == LEFT) && (balloonX > radius) )
      {
        balloonX = balloonX - balloonSpeed;
      }

      if ( (keyCode == RIGHT) && (balloonX < width-radius) )
      {
        balloonX = balloonX + balloonSpeed;
      }

      if ( (keyCode == UP) && (balloonY > radius) )
      {
        balloonY = balloonY - balloonSpeed;
      }

      if ( (keyCode == DOWN) && (balloonY < height-radius) )
      {
        balloonY = balloonY + balloonSpeed;
      }
    }
  }
//}
