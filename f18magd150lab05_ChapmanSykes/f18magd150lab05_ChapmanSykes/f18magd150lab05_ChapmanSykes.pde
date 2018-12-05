float x = 220;
float y = 20;
float w = 150;
float h = 80;
float cX = 400;
float cY = 480;
float cW = 180;
float cH = 180;
float disX, disY;
float circX = 200;
float circY = 250;
float circW = 50;
float circH = 50;
color rectColor, circleColor, circColor, textColor;

void setup(){
  surface.setResizable(true);
  surface.setTitle("Click the Buttons");
  pixelDensity(displayDensity());
  size (600, 600);
  background (20);
  rectColor= color(60,0,200) ;
  circleColor= color(60,0,160);
  textColor = color(0);
}

void draw(){
 background(20);
  
  fill(rectColor);
  rect(x,y,w,h);
 fill(rectColor);
 if(mousePressed){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
   rectColor = color(20,0,100);
  }
  else {
    rectColor = color(60,0,200);
 }
 }
 
 //Random moving circle
 fill(random(255), random(255), random(255), random(255));
 ellipse(circX, circY, circW, circH);
 if(mousePressed){
   disX= mouseX-cX;
  disY= mouseY-cY;
  if(sqrt(sq(disX)+sq(disY))<(cW/2)){
    noStroke();
    circX = random(width);
    circY = random(height);
    fill(5, 50, 150, 60);
    ellipse(circX, circY, 24, 24);
 }
 } 
 
 // CIRCLE BUTTON
fill(circleColor);
ellipse(cX, cY, cW, cH);
if(mousePressed){
  disX= mouseX-cX;
  disY= mouseY-cY;
  if(sqrt(sq(disX)+sq(disY))<(cW/2)){
    noStroke();
fill(circleColor);
ellipse(300, 300, 200, 200);
ellipse(220, 220, 100, 100); //ear
ellipse(380, 220, 100, 100); //ear
fill(30,10, 200);
triangle(240, 300, 270, 250, 290, 300);
triangle(320, 300, 350, 250, 370, 300);
ellipse(300, 350, 40,40); //mouth
fill(10,10,100);
ellipse(215, 220, 40, 50); //inside ear
ellipse(390, 220, 40, 50);
fill(40, 20, 250);
ellipse(300, 390, 50, 20);
fill(circleColor);
rect(350, 550, 20, 60);
rect(400, 550, 20, 60);
}

}
 textSize(15); // rect text
 fill(textColor);
 text("Click on me first!", 230, 50); 

 textSize(15);
 fill(textColor);
 text("Click on me second!", 325,450);
 
 }
