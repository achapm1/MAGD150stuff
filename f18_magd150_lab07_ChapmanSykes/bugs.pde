class Bug{
  
  int centerX, centerY, size;
  
  //constructor
  Bug(){
   
    centerX = round(random(width));
    centerY = 40;
    size = round(random(30, 100));
  }
  
  //Update the positions of the bugs
  void update(){
    centerX = round(random(-5,10)) + centerX;
    centerY = centerY + 5;
  }
  
  // Show the bugs after everything is updated
  void show(){
    fill(10,50,15);
    ellipse(centerX, centerY, size, size);
  }
}
