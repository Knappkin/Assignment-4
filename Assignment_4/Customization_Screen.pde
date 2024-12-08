class Screen2 {
 //Creating the shroomling as an object
 Shroomling shroom;
 
//button 1: lower cap shape
NavButton b1 = new NavButton(80,110);

//button 2: raise cap shape
NavButton b2 = new NavButton(320,110);

//button 3: lower cap colour
NavButton b3 = new NavButton(80,145);

//button 4: raise cap colour
NavButton b4 = new NavButton(320,145);

//button 5: lower cap pattern
NavButton b5 = new NavButton(80, 180);

//button 6: raise cap pattern
NavButton b6 = new NavButton(320,180);

//button 7: lower body shape
NavButton b7 = new NavButton(80, 300);

//button 8: raise body shape
NavButton b8 = new NavButton(320,300);

 
 
 Screen2() {
   shroom = new Shroomling(int(random(0,6)), int(random(0,5)));
 }
 
 void display() {
   background(220,255,196);
   
   //Button to finish
   fill(0);
   rect(width/2,350,40,20);
   shroom.display();
   displayButtons();
 }
 
 void displayButtons() {
   b1.display();
   b2.display();
   b3.display();
   b4.display();
   b5.display();
   b6.display();
   b7.display();
   b8.display();
 }
 
 
 void lowerCType() {
   if(shroom.whichCap > 0){
     
    shroom.whichCap -= 1;
  }
 }
 
void raiseCType() {
  if (shroom.whichCap < 5){
    shroom.whichCap += 1;
   }
}

void lowerCColour() {
   if(shroom.capColour > 0){
     
    shroom.capColour -= 1;
  }
}

void raiseCColour() {
   if(shroom.capColour < 3){
     
    shroom.capColour += 1;
  }
}

void lowerCPat() {
  if(shroom.capPattern == 1) {
    shroom.capPattern = 0;
}
}

void raiseCPat() {
  if(shroom.capPattern == 0) {
    shroom.capPattern = 1;
  }
}

void lowerB() {
  if (shroom.whichBod > 0) {
    shroom.whichBod -=1;
  }
}

void raiseB() {
  if (shroom.whichBod < 6) {
    shroom.whichBod += 1;
  }
}
  
}
