class Screen2 {
  
 Shroomling shroom;
 
 Screen2() {
   shroom = new Shroomling(int(random(0,6)));
 }
 
 void display() {
   background(255,0,0);
   shroom.display();
 }
}
