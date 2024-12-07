class Shroomling{
  int capOffset;
  Shroomling(int capNum) {
     capOffset = capNum * 128;
  }
  
  void display() {
   copy(bodies,capOffset,0,128, 128, width/2-96,height/2,192,192);
  }
  
}
