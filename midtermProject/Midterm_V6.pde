/* 
 Salama Almheiri
 Midterm Project
 June 12 2021
 Version 6
 Balloon Girl Game
 */

PImage banksy;
PImage balloonImg;

int balloonX;
int balloonY;
int radius;
int balloonSpeed;

String title= "Balloon Girl ";
String instruction= "Make the balloon fly away to the correct position by using the 4 arrows";

void setup()
{
  size(500, 800); 
  background(255);
  smooth();
  frameRate(60);

  banksy = loadImage("Banksy.jpg");
  balloonImg = loadImage("Balloon copy.png"); //with white border

  balloonX = width/2;
  balloonY = height/2;
  radius = 25;
  balloonSpeed = 5;
}

void draw()
{
  // background image of the girl and the grey balloon
  image(banksy, 0, 0, 500, 800);

  // circle shape that is the base that the red balloon image is following
  noStroke();
  fill (255);
  ellipse(balloonX, balloonY, radius*2, radius*2); 

  // red balloon image
  imageMode (CENTER);
  image(balloonImg, balloonX, balloonY, 140, 180);

  // text message on the upper left corner (title and instructions)
  fill (250, 90, 80);
  textSize(20);
  textAlign (CENTER);
  text(title, 30, 15, 200, 100);
  fill (210, 70, 80);
  textSize(13);
  text(instruction, 30, 45, 200, 100);
}

// keypressed code to move the circle (balloon) when the four arrow keys are pressed
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
