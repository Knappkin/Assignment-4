class Shroomling{
  
  //Offsets to choose which part of original image to display, it is the number in the order * the size of each "frame"
  int capOffset;
  int bodOffset;
  
  //Which cap image to display
  int whichCap;
  //Multiplies which row by the size of each row
  int capRow;
  // a value to offset the cap position for ones that need to be lower than they are on the spritesheet
  int capY;
  //Which column to show
  int capColour;
  //which row to show
  int capPattern;
  
  //which column of the body png to show
  int whichBod;
  
  Shroomling(int bodNum, int capNum) {
    //starts with random
     whichBod = bodNum;
     whichCap = capNum;
     capPattern = int(random(0,1.99));
     println(capPattern);
     capColour = int(random(0,3.99));
     println(capColour);
     capY = 0;
    
  }
  
  void display() {
    
    // multiply the number in the order by the size to display the right section
     bodOffset =  whichBod * 128;
     capOffset = capColour * 128;
     
      capRow = capPattern * 128;
      
      //adding extra y offset for specific caps
    if (whichCap == 3 || whichCap == 2){
       capY = 24;
     }
    else {
      capY = 0;
    }
     

    //Display body
    //copies the body image, offsets the x location to match the frame needed
   copy(bodies,bodOffset,0,128, 128, width/2-96,height/2,192,192);
   
   //Display cap
   //takes which image is selected in the arrow, then displays it. Column and rows for which colour and pattern
   copy(caps[whichCap],capOffset,capRow,128,128,width/2-96,height/2-192+capY,192,192);
   
  }
  
 
}
