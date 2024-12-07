//ASSIGNMENT 4
Screen1 menu = new Screen1();
Screen2 customPage = new Screen2();
int screenNum = 1;
PImage caps[] = new PImage[7];
PImage bodies;

void setup() {
  //Canas size
  size(400,400);
  
  //Initializing images
  bodies = loadImage("BODIES.png");
  caps[0] = loadImage("Cap1.png");
  caps[1] = loadImage("cap2.png");
  caps[2] = loadImage("Cap3.png");
  caps[3] = loadImage("Cap4.png");
  caps[4] = loadImage("Cap5.png");
  caps[5] = loadImage("Cap6.png");
  caps[6] = loadImage("Cap7.png");
  
  //Making it so there is no stroke across the program and setting rectMode
  noStroke();
  rectMode(CENTER);
}


void draw() {
  
  if (screenNum == 1) {
    menu.display();
  }
  
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
    screenNum = 1;
  }
}
