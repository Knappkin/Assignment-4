class NavButton{
 int buttonX;
 int buttonY;
  
  NavButton(int posX, int posY){
    buttonX = posX;
    buttonY = posY;
  }
  
  void display(){
    //changing the image mode for these specifically to make it easier to calculate the borders for mousepressed
    imageMode(CENTER);
   image(navButton,buttonX,buttonY);
   imageMode(CORNER);
  }
  
}
