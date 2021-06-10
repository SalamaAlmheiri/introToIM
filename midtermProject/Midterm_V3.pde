/* 
 Salama Almheiri
 Midterm Project
 June 10 2021
 Version 3
 */

PImage banksy;
PImage balloonImg;
Balloon b1;
  int balloonX;
  int balloonY;
  int radius;
  int balloonSpeed;
//Balloon b1= new Balloon (0, 0, 0, 0);

void setup() { 
  size(500, 800); 
  frameRate(60);
  
  banksy = loadImage("Banksy.jpg");
  balloonImg = loadImage("balloon.JPG");
  b1= new Balloon (0, 0, 0, 0);
}

void draw () {
  //background (0); //IDK where to put background
  image(banksy, 0, 0, 500, 800); //Draws background image (girl)
  b1.display();
  b1.movement();
}

class Balloon { 
  //balloon class
  //int balloonX;
  //int balloonY;
  //int radius;
  //int balloonSpeed;

  //how do I declare this constructor (Balloon)?
  Balloon (int balloonX, int balloonY, int radius, int balloonSpeed) {
    balloonX = width/2;
    balloonY = height/2;
    radius = 25;
    balloonSpeed = 5;
    //Why is this not working when its not in (display)? Where am I supposed to put it??
  }
  void display () {
    balloonX = width/2;
    balloonY = height/2;
    radius = 25;
    balloonSpeed = 5;
    
    noStroke();
    fill (210, 70, 80);
    //ellipse(balloonX, balloonY, 100,100); //this is showing the circle
    ellipse(balloonX, balloonY, radius*2, radius*2); //this should be working but is not showing a circle
    imageMode (CENTER);
    image(balloonImg, balloonX, balloonY, 126, 175);
  }

  //void keyPressed()
  //{
  void movement() {
    if (keyPressed) {
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
}
