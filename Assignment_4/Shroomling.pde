class Shroomling{
  int capOffset;
  int bodOffset;
  int whichCap;
  int capRow;
  int capY;
  Shroomling(int bodNum, int capNum) {
     bodOffset = bodNum * 128;
     whichCap = capNum;
     capRow = int(random(0,1.99))*128;
     println(capRow);
     capOffset = int(random(0,3.99)) *128;
     println(capOffset);
     capY = 0;
     if (whichCap == 3 || whichCap == 2){
       capY = 24;
     }
  }
  
  void display() {
    

    //Display body
   copy(bodies,bodOffset,0,128, 128, width/2-96,height/2,192,192);
   
   //Display cap
   copy(caps[whichCap],capOffset,capRow,128,128,width/2-96,height/2-192+capY,192,192);
   
  }
  
}
