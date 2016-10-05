float x;
float y;
float diameter = 50;
float radius = diameter/2;
float xDirection = 3;
float yDirection = 3;
//float r,g,b;

void setup(){
  size(1250,1000);
  x = width/2;
  y = height/2;
  background(255);
  strokeWeight(3);
  
}

void draw(){
 // r = random (0,255);
//b = random (0,255);
//g = random(0,255);
//background(r,g,b);wanted to do a strobe light style background but it was too seizure inducing
background(#A005F5);
  
 //rightarm

 rect(x-180,y+175,25,200);
  //left arm
 rect(x+75,y+175,25,200);
  //body
  fill(#504302);
  ellipse(x-25,y+200,300,300);
  fill(0); //hair
   ellipse(x-25,y-100,200,200);
  fill(#504302); //head
 rect(x-100, y-100,150,100);
  fill(0);
  ellipse(x-25,y+20,200,120);
 fill(255);//eyes
  ellipse(x-50,y-100,30,40);
  ellipse(x+10,y-100,30,40);
  fill(0);
  ellipse(x-50,y-100,10,20);
  ellipse(x+10,y-100,10,20);
  fill(255); //mouth 
  ellipse(x-25,y+20,150,25);
  //leg
  fill(0);
  ellipse(x-25,y+350,150,150);
 fill(#8EA6B9);
 ellipse(x-25,y+350,75,75);
 //bellybutton 
 fill(0);
 ellipse(x-25,y+225,50,50);
 
 //move
 x = x + xDirection;
 y= y+yDirection;
 if( x > width - radius || x < radius) {
   xDirection = -xDirection;
 }
 if (y > height - radius || y < radius) {
   yDirection = -yDirection;
 }
}
 
  


  