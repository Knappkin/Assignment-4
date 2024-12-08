//ASSIGNMENT 4

//Creating objects for each page
Screen1 menu = new Screen1();
Screen2 customPage = new Screen2();

//Determmines which screen to show
int screenNum = 1;

//Images for the mushroomm caps, bodies, and the buttons for changing options in customization
PImage caps[] = new PImage[7];
PImage bodies;
PImage navButton;

void setup() {
  //Canas size
  size(400,400);
  
  //Initializing images
  bodies = loadImage("BODIES5.png");
  caps[0] = loadImage("Cap1.png");
  caps[1] = loadImage("cap2.png");
  caps[2] = loadImage("Cap3.png");
  caps[3] = loadImage("Cap4.png");
  caps[4] = loadImage("Cap6.png");
  caps[5] = loadImage("Cap7.png");
  
  navButton = loadImage("button.png");
  
  //Making it so there is no stroke across the program and setting rectMode
  noStroke();
  rectMode(CENTER);
}


void draw() {
  
  //display the main menu
  if (screenNum == 1) {
    menu.display();
  }
  //display the customization menu
  if (screenNum == 2) {
    customPage.display(); 
  }
  
}

void mousePressed() {
  
  //Code for if the button is clicked on the menu screen
  if (screenNum == 1 && mouseX < width/2 + 38 && mouseX > width/2 -38 && mouseY > 300-38 && mouseY < 300+38) {
    screenNum = 2;
  }

 //If its clicked on the customization screen
  else if (screenNum == 2) {
    
    //Finish button
    if (mouseX > width/2-20 && mouseX <width/2 +20 && mouseY > 340 && mouseY < 360) {
      screenNum = 1;
    }
    
    /////// OPTION CHANGE BUTTONS ////////
    //b1 lower cap shape
    if (mouseX > 72 && mouseX < 88 && mouseY > 102 && mouseY < 118){
      customPage.lowerCType();
    }
    //b2 raise cap shape
    if (mouseX > 312 && mouseX < 328 && mouseY > 102 && mouseY < 118) {
      customPage.raiseCType();
    }
    //b3 lower cap colour
    if (mouseX > 72 && mouseX < 88 && mouseY > 137 && mouseY <153) {
      customPage.lowerCColour();
    }
     //b4 raise cap colour
    if (mouseX > 312 && mouseX < 328 && mouseY > 137 && mouseY <153) {
      customPage.raiseCColour();
    }
    
    //b5 lower cap pattern
    if (mouseX > 72 && mouseX < 88 && mouseY >172 && mouseY < 188) {
      customPage.lowerCPat();
      println("clicked!");
  }
  //b6 raise cap pattern
    if (mouseX > 312 && mouseX < 328 && mouseY >172 && mouseY < 188) {
      customPage.raiseCPat();
      println("clacked!");
  }
  
  //b7 lower body shape
  if  (mouseX > 72 && mouseX < 88 && mouseY > 292 && mouseY < 308) {
    customPage.lowerB();
  }
  
  //b8 raise body shape
  if (mouseX > 312 && mouseX < 328 && mouseY > 292 && mouseY < 308) {
    customPage.raiseB();
  }
}
}
