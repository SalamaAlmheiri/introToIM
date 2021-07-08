# First Draft Final Project Proposal

### June 29:

**Concept:**
- My idea is to create a maze game that will appear on the processing canvas and can be controlled by interacting with the arduino.
- The maze design will be inspired by the movie "My Neighbour Totoro". Where there is a scene where the little girl goes wondering into the forest to find the creature totoro sleeping. I was going to make the girl the character that moves in the maze but drawing her would be hard so i decided to draw another more simple character (which is another creature that the girl follows into the forest).



Items from **Arduino**
1. 4 buttons to move up, down, left, right
2. LED to light up when the game is won
3. LCD screen to display instructions and game comments
4. Tone: will be using the piazo buzzer for sound effects

Items from **Processing**
1. Image for the background
2. Animation for the moving object (character)
3. Text to display the instructions


Drawing that I made for the background: 

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze%201.jpg" width=600 align=center> 


### June 30:

- Today, I started working on the arduino. I made a circuit that works for the 4 buttons that I am going to use, and I wrote the aruino code.
- I also worked on Processing and drew my own sprite sheet for the character that will be moving on the screen.
- This is what it looks like:

[Arduino code](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Button_test__ard_.ino)

[Processing code](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze_V1__pro_.pde)

Sprite sheet:

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/wTotoro2.png" width=300 align=center> 

Processing canvas:

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze-june%2030.png" width=300 align=center> 



### July 3:

- Today, I worked on the processing code to make the character move according to the sprite sheet. So now when I press the buttons on the Arduino, the character moves where I want it to go and is also animated when moving.
- I was also working on trying to find a way to in the code to distiguish between the white background color and the green wall color to make the character not move through the walls but I am having trouble understanding how to do that.

[Processing code Version 2](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze_V2__pro_.pde)


### July 5:
- Today I fixed the problem so that the character stops at the walls. But now when the character touches a wall, it gets stuck and doesnt move again. So I will be working on fixing that problem. 
- I have also connected the LCD screen to my arduino and added it to my arduino code. I am going to make it display the game title and then display success once the game is won.
- I have also conected a green LED which should also light up when the game is won.

Here is a video of what it looks like so far (it also shows how it gets stuck) [video](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze%20game-%20Salama.mov)

[Processing code Version 3](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze_V3__pro_.pde)

This is what the circuit looks like:

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/circuit.png" width=400 align=center> 


### July 6:
- I fixed the problem with the wall by adding a prevX, prevY (previos x and y position) to allow the character to return one step back so it does not continue to move forward and keep getting stuck to the wall.
- I also drew an "Instruction" page and a "Winning" page. **(see below)**
- I have also added a gameState in order to be able to go to different "screens". First is the instruction screen (gameState=0) which automatically appears at the start of the game. When the blue button is pressed the player can start the game which is the playing state (gameState=1). Then when the player reaches the end of the maze, another screen appears that says "success!" which is the win state (gameState=2).
- However, I have come across another problem which is that, I am trying to make the player able to return to the first screen by pressing the red button but that does not work which is a problem I am trying to fix now. **(see video)**
- **Update** I have fixed the problem by simply entering the same integer variables used under the else statement.
- I have also added background music that plays in a loop throughout the game. As well another sound which plays when the player reaches the end of the maze.
- Also made the LED light up and the LCD show "Sucess" when the game is won.

Here is a video of what the problem looks like [video](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/maze.mov)

[Processing code Version 5](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze_V5__pro_.pde)

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Instructions2.JPG" width=400 align=center> 
<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/won.JPG" width=400 align=center> 
