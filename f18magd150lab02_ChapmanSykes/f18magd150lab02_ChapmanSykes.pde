/* Angelica Chapman-Sykes
Due 9/23/2018
MAGD 150
Lab 2 */

size(250,260);
background(245);
noStroke();
colorMode(RGB); //Set color mode to RGB

rectMode(CORNER);
fill(0); //Set to black
rect(0, 0, 100, 130); //Draw black rectangle 

fill(150); //Set to a grayish color
rect( 0, 10, 80, 100); //Draw gray rectangle 

fill(0);
rect(150,  0, 150, 130);

fill(150);
rect( 170, 10, 130, 100);
//Draw rectangle on the other side

fill(100, 0, 100); //Set fill to purple will using RBG colors
quad(30, 50, 60, 40, 60, 70, 40, 80);

fill(0, 255, 255);
//arc syntax is (x, y, w, h, start, stop)
arc(200, 60, 40,  90, 0, PI+QUARTER_PI, CHORD);

stroke(1);
colorMode(HSB);//color mode to HSB
fill(200,260, 60, 150);
ellipse(125, 60, 40, 40);

fill(45, 55,300);
ellipse(30, 160, 40, 40);

fill(5, 30, 360);
ellipse(80, 160, 40, 40);

hex(305060); //hex color 
fill( 225,0,140);
ellipse(125, 160, 40, 40);

colorMode(HSB);
fill(45, 55,300);
ellipse(170, 160, 40, 40);

fill(5, 30, 360);
ellipse(220, 160, 40, 40);

noStroke();
//Triangle syntax is (x1, y1, x2, y2, x3, y3)
fill(100,200, 150, 100);
triangle(0, 260, 30, 200, 70,260);
triangle(70,260, 100,200, 140,260);
triangle(140,260,170, 200, 210,260);
triangle(210, 260, 240, 200, 280,260);

noFill();
stroke(255, 102, 0);
line(125, 80, 125, 120);

//bezier(anchorPoint1X, anchorPoint1Y,
//  controlPoint1X, controlPoint1Y,
//  controlPoint2X, controlPoint2Y,
//  anchorPoint2X, anchorPoint2Y);
strokeWeight(1);
stroke(0, 0, 0);

bezier(30,180,
   40, 180,
  50, 190,
  30, 195);

bezier(80, 180,
   40, 180,
  50, 190,
  40, 205);
  
  line(125, 180, 125, 230);
  
bezier(170, 180, 
 230, 230,
 150, 190,
 150, 200);
 
 bezier(220, 180,
 
 240, 230,
 170, 200,
 200, 230);
  
  
