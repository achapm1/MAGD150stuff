PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

void setup()
{
 size(600,600);
 background(0, 0, 100);
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);

}

void draw(){
  
  // Add velocity to the location.
  location.add(velocity);
  // Add gravity to velocity
  velocity.add(gravity);
  
  // Bounce off edges
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }

  // Display circle at location vector
  stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(location.x,location.y,48,48);

noStroke();
fill(80,40,40);
pizza();            //Main Pizza
fill(240,240,0);
ellipse(300,300,250,250);  //Crust
stroke(255,220);
line(300,150,300,445);       //1st Line
line(150,300,450,300);      //2nd Line

stroke(0);
line(pmouseX, pmouseY, mouseX, mouseY);


fill(255,0,0);
noStroke();
ellipse(260,260,40,40);      //Pepperoni 1
ellipse(240,220,40,40);      //Pepperoni 2
ellipse(210,270,40,40);     //Pepperoni 3
ellipse(330,270,40,40);    //Pepperoni 4
ellipse(350,220,40,40);    //Pepperoni 5  
ellipse(375,260,40,40);    //Pepperoni 6

fill(150,204,4);
rect(240,320,40,20);      //other Topping 1
rect(200,320,30,40);        //other Topping 2
rect(250,380,20,30);      //other Topping 3
rect(320,360,20,40);      //other Topping 4
rect(360,330,20,40);      //other topping 5
rect(305,320,30,20);   //other topping 6

//CIRCLES IN THE CORNER
if (mouseX > 300){
  fill(255,90,0);
  ellipse(50,60,40,40);
} else if(mouseX > 200){
  fill(255,255,20);
  ellipse(50,550, 40,40);
} else if(mouseX > 100);{
    fill(50, 100, 200);
    ellipse( 550, 60, 40, 40);
} 
}
void pizza()
{
  ellipse(300,300,300,300);
}

void mousePressed(){
  if (mousePressed == true) {
    background(50);
  }
}
 
void keyPressed(){
  if (keyPressed == true){
    background (255,0,150,50);
  }
}
