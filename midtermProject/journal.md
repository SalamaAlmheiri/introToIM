# Midterm Project Idea:

### June 6
Recreating the famous art piece "Girl with Balloon" by the artist Banksy on the canvas.
It will be a game where a player has to move the red balloon with the arrow keys to a higher position, as if the balloon is flying away.   

- Shape: Circle (balloon, movable). 
- Image: Upload a photo of the girl (will not be moving).  
- Sound: Success sound once the balloon is in the correct position on the canvas.   
- On-screen text: name of the game or painting.   

![](https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Banksy%20artwork.jpg)  

### June 9

I changed the artwork a little bit and moved things around in order to fit the size that I want.
The moving balloon will be red while the grey balloon acts as a base where the red balloon need to reach/ be moved to in order to win the game.

See the code in file name: [Midterm_V1.pde] (https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Midterm_V1.pde)

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Banksy%201.jpg" width=300 align=center>


### June 10

I have created a balloon class and included display and movement. For the display, it would display a ellipse which would be the "base" which the image of the red balloon would follow. In the movement section, I created a keypressed if statement so that the red balloon can be moved with the four keyboard arrows.
However, I have come across an **unknown problem** because everything is working exept that the red balloon appears in the middle of the screen but it does not move when i press the keys.

See the code in file name: [Midterm_V3.pde] (https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Midterm_V3.pde)


<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Banksy%202.png" width=300 align=center>


### June 12 (Part 1)

Today I added the String to my code so I can write the text on the canvas. Here is what it displays.

**It displays:** name of the game and short instructions  
"Balloon Girl"    
"Make the balloon fly away to the correct position by using the 4 arrows"

I am also still working on:   
- trying to fix why the balloon is not moving when I press the keys.
- adding sound to the game
- making the balloon stop when it reaches the correct position.

See the code in file name [Midterm_V5.pde](https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Midterm_V5.pde)

<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Banksy%203.png" width=300 align=center>

### June 12 (Part 2)

I was having difficulty with my code so I decided to rewrite it without the class function because it made the code complicated and I couldnt know why the balloon is not moving. However, now my code looks a lot less complicated and the balloon moves when I press the arrow keys.

Here is a **video** of what it looks like when the balloon is moving. [Video 1](https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Video%201.mov)

Here is what the code looks like now: [Midterm_V6.pde](https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Midterm_V6.pde)


### June 13

- Today I am working on adding the sound and making the balloon stop correctly.
- To make the balloon stop, I added a boolean that is set to false.

**Other things I changed:**
- When I had uploaded the girl image, I was drawing it as an image in the background instead of using an actual background function. So i changed it to background after i learnt about the functions use. This way, the red balloon does not leave tracing after it moves.
- I added 2 sounds: first the background music that plays all the time while the game is being played. Second is the "winning" sound that plays when the red balloon reaches its goal. At first I had a hard time trying to make the sound work becasue it kept giving me IndexOutOfBoundsExceptionon error but there was nothing wrong with my code becasue i checked it many times. So then, I downloaded a new sound and removed the old one and it was working normally.
- I also added a 'space' key function that allows the game to be restarted by pressing the space key.


<img src="https://github.com/SalamaAlmheiri/introToIM/blob/main/midtermProject/Banksy%204.png" width=300 align=center>


## **Final Game**

