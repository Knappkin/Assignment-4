class Screen2 {
  
 Shroomling shroom;
 
 Screen2() {
   shroom = new Shroomling(int(random(0,6)), int(random(0,5)));
 }
 
 void display() {
   background(0);
   shroom.display();
 }
 void lowerCType() {
   if(shroom.whichCap > 0){
     
    shroom.whichCap -= 1;
  }
 }
 
void raiseCType() {
  if (shroom.whichCap < 3){
    shroom.whichCap += 1;
   }
}

}
