class Screen2 {
  
 Shroomling shroom;
 
 Screen2() {
   shroom = new Shroomling(int(random(0,6)), int(random(0,5)));
 }
 
 void display() {
   background(0);
   shroom.display();
 }
}
