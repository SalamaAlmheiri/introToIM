/* 
 Salama Almheiri
 Midterm Project
 June 13 2021
 Final Version
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
String finish= "Success!! Press space key to play again";

boolean isDone = false;

import processing.sound.*;
SoundFile song;
SoundFile bgMusic;

void setup()
{
  size(500, 800); 
  background(255);
  smooth();
  frameRate(60);

  banksy = loadImage("Banksy2.jpg");
  balloonImg = loadImage("Balloon copy.png");

  song = new SoundFile (this, "sound.wav");
  bgMusic = new SoundFile (this, "music1.wav");
  bgMusic.loop();

  balloonX = width/2;
  balloonY = height/2;
  radius = 25;
  balloonSpeed = 5;
}

void draw()
{
  // background image of the girl and the grey balloon
  background(banksy); 

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

  // Displays "Success!!" text after the game is won
  if (isDone== true) {
    fill (255, 0, 0);
    textSize(20);
    text(finish, width/2, 550);
  }
}

// keypressed code to move the balloon when one of the four arrow keys are pressed
void keyPressed()
{
  if (isDone==false) {
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

    // this statement will check if the balloon reached the correct position and will:
    // 1) make the balloon stop
    // 2) play a "winning" sound
    if ((balloonX >= 410) && (balloonY <= 130) && balloonX >= 430 && balloonY <= 110)
    {
      balloonX = 420;
      balloonY = 120;
      isDone= true;
      song.play();
    }
  } 
  // when space is pressed it restarts the game and returns the balloon to its original position
  else {
    if (key==' ') {
      println("restart");
      isDone=false;

      balloonX= width/2;
      balloonY= height/2;
    }
  }
}
