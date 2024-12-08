class Shroomling{
  int capOffset;
  int bodOffset;
  int whichCap;
  int capRow;
  int capY;
  int capColour;
  int capPattern;
  int whichBod;
  
  Shroomling(int bodNum, int capNum) {
     whichBod = bodNum;
     whichCap = capNum;
     capPattern = int(random(0,1.99));
     println(capPattern);
     capColour = int(random(0,3.99));
     println(capColour);
     capY = 0;
    
  }
  
  void display() {
    
     bodOffset =  whichBod * 128;
     capOffset = capColour * 128;
     
      capRow = capPattern * 128;
      
    if (whichCap == 3 || whichCap == 2){
       capY = 24;
     }
    else {
      capY = 0;
    }
     

    //Display body
   copy(bodies,bodOffset,0,128, 128, width/2-96,height/2,192,192);
   
   //Display cap
   copy(caps[whichCap],capOffset,capRow,128,128,width/2-96,height/2-192+capY,192,192);
   
  }
  
 
}
