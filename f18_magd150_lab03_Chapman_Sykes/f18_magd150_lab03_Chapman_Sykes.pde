/*Angelica Chapman-Sykes
MAGD 150 LAB 3
Due: 9/30/2018 */


float x = 0;
float y = 0;
float xspeed = min(5.5,8); //sets xspeed to 5
float yspeed = max(1.5,2.3); //sets yspeed to 2.3

void setup(){
size(600, 400);
background(100);
frameRate(30);
}

void draw(){
// Print out the dimensions of the window
println("width: " + width); // 500
println("height: " + height); // 300
println("Random thought...Dogs are better than cats!");

//Create a 3 by 3 grid
stroke(250, 250, 250);
line(0, height/ 3.0, width, height/ 3.0);
line(0, height * 2 / 3.0, width, height * 2 / 3.0);
line(width / 3.0, 0, width / 3.0, height);
line(width * 2 / 3.0, 0, width * 2 / 3.0, height);

noStroke();
//red rect
  fill (200,0,0);
  rect(15, 15, 165, 100);

//orange rect
  fill (250,110, 0);
  rect(15, 285, 165,100);
  
//yellow rect
  fill(250, 220, 0);
  rect( 420, 15, 165, 100);
  
//green rect
  fill(0, 200, 0);
  rect(420, 285, 165,100);
  
// WHITE moving rect with a constrain
  fill(150, 150, 150, 50);
  float mx = constrain(mouseX, 200, 300); 
  float my = constrain(mouseY, 135, 300);
  rect(mx, my, 100, 100);


// Create a bouncing ball
  stroke(50);
  fill(0,100);
  ellipse(x, y, 100, 100);
  
  x = x + xspeed;
  y = y + yspeed;
  
  if (x > width || x < 0){
    xspeed = xspeed * -1;
  }
  if (y > height || y < 0) {
    yspeed = yspeed * -1;
  }
}
