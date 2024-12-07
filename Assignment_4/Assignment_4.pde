//ASSIGNMENT 4
Screen1 menu = new Screen1();
Screen2 customPage = new Screen2();
int screenNum = 1;

void setup() {
  size(400,400);
}


void draw() {
  
  if (screenNum == 1) {
    menu.display();
  }
  
  if (screenNum == 2) {
    customPage.display(); 
  }
}
