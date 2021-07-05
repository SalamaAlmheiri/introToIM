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
- Today I fixed the problem so that the character stops at the walls. But now when the character touches a wall, it gets stuck and doesnt move again. So I will be working of fixing that problem. 

Here is a video of what it looks like so far (it also shows how it gets stuck) [video](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze%20game-%20Salama.mov)

[Processing code Version 3](https://github.com/SalamaAlmheiri/introToIM/blob/main/finalProject/Maze_V3__pro_.pde)
