class NavButton{
 int buttonX;
 int buttonY;
  
  NavButton(int posX, int posY){
    buttonX = posX;
    buttonY = posY;
  }
  
  void display(){
    imageMode(CENTER);
   image(navButton,buttonX,buttonY);
   imageMode(CORNER);
  }
  
}
