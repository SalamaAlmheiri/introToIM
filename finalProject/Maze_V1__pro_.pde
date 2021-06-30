/* 
 Salama Almheiri
 Midterm Project
 June 30 2021
 Version 1
 Totoro Forest Maze Game
 */

PImage maze;
//PImage wTotoro; //white totoro
PImage spritesheet;
PImage[][] sprites;
//String instruction= "Find Totoro in the Forest/ Press the buttons to move through the forest maze";
//String finish= "Success!! Press space key to play again";
//mention which button is which??

//***
int direction = 1; // 0 up
int step = 0;
int x;
int y;

void setup()
{
  size(700, 700); //change based on maze image size!!!
  //background(255);
  smooth();
  frameRate(60);

  maze= loadImage("Maze.jpg");
  spritesheet= loadImage("wTotoro3 copy.png");
  sprites = new PImage[4][3];
  
  int w = spritesheet.width/3;
  int h = spritesheet.height/4;

  for (int y=0; y < 4; y++) {
    for (int x=0; x< 3; x++) {
      sprites[y][x] = spritesheet.get(x*w, y*h, w, h);
    }
  }
  x = width/2;
  y = height/2;

  imageMode(CENTER);
}

void draw()
{

  background(maze); //sents the image maze as BG

  // text message (game name and instructions) + change position!!!
  fill (250, 90, 80);
  textSize(20);
  textAlign (CENTER);
  //text(finish, 30, 15, 200, 100);
  fill (210, 70, 80);
  textSize(13);
  //text(instruction, 30, 45, 200, 100);

  //**image(sprites[direction][step], x, y);
}
