# Final Project

## Concept
### **Game Title:** Totoro's Maze Game
- My game is inspired by the movie *My Neighbour Totoro*. There is a scene where the little girl follows the little white creature into the forest to eventually find Totoro sleeping in the forest.
- So my game is based off of this forest where the player is the white creature trying to find their way to Totoro through the forest maze.

**Process, Problems and Solutions:**
- First, I had this concept in my mind so I decided to start drawing out the idea and I made the background.
- Then I started working on the code and adding the important things like the buttons.
- Then I also drew the character's spritesheet and wrote the code to make sure it worked. the position of each sprite in the spritesheet is important, so I referenced the spritesheet we looked at in class to know the directions of where the character will be moving.
- A problem I faced was that the character was at first not stoping at the walls, then I changed things in the code, but it was getting stuck to the wall instead. So I figured out a solution. I created new integers that we named `prevX, prevY` which make the character return a step back to its previous position.

[Screen Recorded Video](https://youtu.be/XuUzAIEqk6M)

[Playing Game Video](https://youtu.be/xyUqHKKGeKY)

## **Game:**
State 1 (playing)

 <img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Game.png" width=600 align=center> 

State 0(instruction) and State 2 (win)

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Instructions2.JPG" width=450 align=left> <img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/won.JPG" width=450 align=right> 



## **Circuit:**
- The game can be played by pressing the 4 buttons on the arduino to make the character move.
- The LCD screen displays the title of the screen at the start of the game.
- The LED lights blink when the game is won.
- The LCD screen displays "Success!" when the game is won.

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Circuit%20Start.png" width=450 align=left> <img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Circuit%20End.png" width=450 align=right> 



## **Schematic:**

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Schematic.png" width=600 align=center> 


## **Codes**

[Final Arduino code](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Final_Game_Arduino_.ino)

[Final Processing code](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Final_Game_Processing.pde)

[Processing Data](https://github.com/SalamaAlmheiri/introToIM/tree/main/finalProject/data)
