/* Angelica Chapman-Sykes
MAGD 150 
LAB 07
DUE: 10/28/2018
*/
//I used the enemy class code as an example
//I used the Lesson 7 transformations code as an example 


Bug[] bugs = new Bug[15];
 
PVector center1, show1,scale;

float mid;

void setup() {
  surface.setResizable(true);
  surface.setTitle("Clown");
  pixelDensity(displayDensity());
  size(700, 700);
  background(30);
  
  for (int i = 0; i< bugs.length; i++) {
    bugs[i] = new Bug();
  }
  
  center1 = new PVector(width * 0.25, height * 0.25);
  scale = new PVector(width * 0.2, height * 0.125);
 mid = 0;
 

  
}


void draw() {
background(30);  

//a for loop to display the "bugs"

for (int i = 0; i< bugs.length; i++) {
    
bugs[i].update();

bugs[i].show();
  
}

mid = map(mouseX, 0, width, 0, TWO_PI); //change sizes based on the mouse positions on the screen.
  scale.y = map(mouseY, 0, height, height * 0.025 , width * 0.1);
  
  
  //Make clown
    
  //Head
  noStroke();
  fill(255);
  ellipse(300, 300, 350, 350);
  
  //Eyes
  fill(230,0,0);
  ellipse(220, 250, 50,50);
  ellipse(350, 250, 50, 50);
  
  //makes eyes crescent
  fill(255);
  ellipse(220,270, 50,50);
  ellipse(350, 270, 50, 50);
  
  //Eyebrows
 stroke(0);
 strokeWeight(10);
  line(200, 200, 250, 220);
  line(300,220, 400, 200);
  
  //nose
 noStroke();
 fill(255,0,30);
 ellipse(280,300, 70, 60);
 fill(200);
 ellipse(270, 290, 20, 20);
 
 //Mouth
 fill(5);
 ellipse(300, 380, 50,60);
 
  //HAT
  pushStyle();
 fill(255,150, 0);
 noStroke();
 ellipseMode(RADIUS);
 pushMatrix();
translate(center1.x, center1.y);
rotate(-mid); //changes the angle movement of the shape so that it can rotate
scale(scale.x, scale.y);
 ellipse(0,0,.5,.5);
 show1 = new PVector(screenX(2, 0), screenY(2, 0));

popMatrix();
popStyle(); //must have pop style and matrix at the end if you use push and pop style in the begining.

if(displayDensity() == 2) {
    show1.mult(0.75);


}

}
