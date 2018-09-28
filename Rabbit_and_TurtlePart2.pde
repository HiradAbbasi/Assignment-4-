
//Variable that that stores The Cat Png and The Dog Png
PImage currentImage;
PImage currentImages;

//The Cat's X and Y Locations
int Picture1X;
int Picture1Y;
int stage;

//The Dog's X and Y Locations
int Picture2X;
int Picture2Y;

//The boolean variable for the variable (reset) is set to false 
boolean reset = false;
//The boolean variable for the variable (a) is set to false 
boolean a = false;

void setup()
{
  
  //Screen Size
  size(1000, 1000);
  stage = 1;
  //The Cat's variable (currentImage) is set to load the Cat.png file that is stored in the Rabbit_and_Turlte folder
  currentImage = loadImage("Cat.png");
  //The Dog's variable (currentImages) is set to load the Dog.png file that is stored in the Rabbit_and_Turlte folder
  currentImages = loadImage("Dog.png");
  
  //The Dog's X Location
  Picture2X = 850;
  //The Cat's X Location
  Picture1X = 0;
  //The Dog's Y Location
  Picture2Y = 5;
  //The Cat's Y Location
  Picture1Y = 5;
 
}

void draw()
{  
  //Sets the background color to White(255,255,255)RGB or(255)
  background(255);
  
  //The setup for stage5
  if(stage==5)
  {
    setup();
  }
   
  //If stage1 happens make screen white and make the text"Welcome, Press any key to Continue" in black font color
  if(stage==1)
  {
    //Background color for stage 1 is set to white
    background(255);
    //The font color is set to black
    fill(0);
    //The text mode is set to CENTER
    textAlign(CENTER);
    //The size of the text
    textSize(40);
    //The text that appears in satge1
    text("Welcome, Press any key to Continue",width/2,height/2);
  
  //If any key is pressed after stage1 you will atuomaticlly switch to stage2  
  if(keyPressed == true)
  {
    //The stage2 or the actual game 
    stage = 2;
  }
}
  // This is the stage2 code which is my code for the "Rabbit_and_Turtle" code
  if(stage==2)
  {
    background(255);
    //The X, Y and the size of the Cat.Png
    image(currentImage, Picture1X, Picture1Y, 150, 150);
    //The X, Y and the size of the Dog.Png
    image(currentImages, Picture2X, Picture2Y, 150, 150);
  }

  //This (if) statement lets the software to say the text "The Cat Wins." That's if the Picture 1Y which is the cat reaches the 800Y location inside the game
  if (Picture1Y>=800)
  {
    //stage3 is for when the Cat wins
    stage = 3;
  }
  
  if(stage==3)
  {
    //The setup for the "The Cat Wins"
    //The color for the text "The Cat Wins"
    fill(0);
    //The Text size and the Text "The Cat Wins
    textSize(100);
    text("The Cat Wins", width/2, height/2);
    
    //Button setting for the reset button. That's if you win as the Cat
    //The box color is set to green
    fill(0,255,0);
    //The size of the reset box
    rect(350,600,300,100);
    //The text color
    fill(0);
    //Text size
    textSize(50);
    //The text that says "RESTART" when you win as the cat
    text("RESTART",500,660);
    
  if(mousePressed == true)
  {
    reset = true;     
  }
  
  else
  {
     reset = false;
  }
  
  if(reset == true)
  {
    stage = 5;
  }
}
  
  if (Picture2Y>=800)
  {
    stage = 4;
  }
  
  if(stage==4)
  {
    //The setup for the "The Dog Wins"
    //The color for the text "The Dog Wins"
    fill(0);
    //The size of the text "The Dog Wins"
    textSize(100);
    //The "The Dog Wins" text location 
    text("The Dog Wins", width/2, height/2);
    
    //Button setting for the reset button. That's if you win as the Dog
    //The box is set to green
    fill(0,255,0);
    //The size and the location of the box
    rect(350,600,300,100);
    //The color of the font
    fill(0);
    //The size of the text
    textSize(50);
    //The text that says "RESTART" when you win as the Dog
    text("RESTART",500,660);
    
  if(mousePressed == true)
  {
    reset = true;
  }
  else
  {
    reset = false;
  }
  if(reset == true)
  {
    stage = 5;
  }
}
  
}


void keyPressed()
{
  //The Cat moves up when the W key is pressed
  if (key == 'w' || key == 'W')
  {
    Picture1X += 0;
    Picture1Y += -10;
  } 
  
  //The Cat moves down when the S key is pressed
  else if (key == 's' || key == 'S')
  {
    Picture1X += 0;
    Picture1Y += +10;
  }
  
  //The Cat moves left when the A key is pressed
  else if (key == 'a' || key == 'A')
  {  
    Picture1X += -10;
    Picture1Y += 0;
  }
  
  //The Cat moves right when the D key is pressed
  else if (key == 'd' || key == 'D')
  {
    Picture1X += +10;
    Picture1Y += 0;
  }
  
  //The Dog moves up when the W key is pressed
  else if (key == 'u' || key == 'U')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += 0;
    Picture2Y += -10;
  }
  
  //The Dog moves down when the J key is pressed
  else if (key == 'j' || key == 'J')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += 0;
    Picture2Y += +10;
  }
  
  //The Dog moves left when the H key is pressed
  else if (key == 'h' || key == 'H')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += -10;
    Picture2Y += 0;
  }
  
  //The Dog moves right when the K key is pressed
  else if (key == 'k' || key == 'K')
  {
    currentImages = loadImage("Dog.png");
    Picture2X += +10;
    Picture2Y += 0;
  } 
  
  //If you need to CHEAT as The Cat press E
  else if (key == 'e' || key == 'E')
  {  
    currentImage = loadImage("Cat.png");
    //The Cat's Y is going up by 800
    Picture1X += 0;
    Picture1Y += 800;
  }
  
  //If you need to CHEAT as The Dog press I
  else if (key == 'i' || key == 'I')
  {
    currentImages = loadImage("Dog.png");
    //The Dog's Y is going up by 800
    Picture2X += 0;
    Picture2Y += 800;
  }
} 
//The setup for mouse Clicked
//When mouse pressed inside the box the reset boolean will respond with the reset screen 
void mouseClicked() 
{
  //The location of the hitbox of the reset button
  if(mouseX > 350 && mouseX < 400 && mouseY > 600 && mouseY < 650)
  {
    reset = true;
  }
}
