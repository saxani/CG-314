float a = width;
float b = height;
float angle = 0.0;
float offset;
float xOffset;
float yOffset;
float scalar = width/2;
float speed = 5;
float x4; 
float y4;
float diameter = 50;
float radius = diameter/2;
float direction = 2;
float xDirection = 3;
float yDirection = 30;

void setup() {
  size(600, 600);
  offset = height/2;
  x4 = width/2;
  y4 = height/2;
  background(0,0,0);
}

void draw() {
//mouse
 if (mousePressed) {
    cursor(CROSS);
    } 
//movement  
  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.2) * scalar;
  
  float x = xOffset + cos(angle) * scalar;
  float y = yOffset + sin(angle + 6) * scalar;
  
  float x3 = xOffset + sin(angle + 6) * scalar;
  float y3 = yOffset + cos(angle) * scalar;
  
  angle+= speed;  

//robot head
  fill(210);
  stroke(250);
  ellipse(a+200, b+90,a+30, a+30);
  fill(mouseY, random(mouseY),random(mouseX));
  rect(x+300, y+190,5, 12);
  
//robot body
  fill(0);
  stroke(250);
  rect(a+100, b+100, a*2, a*2);
  rect(a+150, b+100, a+50, a*2);
  
//robot wheels
  //fill(random(mouseX), mouseX, random(mouseX));
  rect(x3+220, y3+450, 160, 10);
  
//robot color meters
  noStroke();
  fill(random(mouseX), random(mouseY), mouseX);
  rect(width/2+20, y1-10,40, 40);
  rect(width/2-20, y1-10,20, 20);
  
//bg
  noStroke();
  //background(0, 0, 0);
  fill(random(mouseX), random(mouseY), mouseX);
  rect(x4,y4,4, 4);
  //movement
  //x++;
  //if(x4>width + radius){
    //x4=-radius;
  x4 = x4 + xDirection;
  y4 = y4 + yDirection;
  
  if(x4>width - radius || x4<radius) {
    xDirection = -xDirection;
  } 
  if(y4>height - radius || y4<radius) {
    yDirection = -yDirection;
  }
  
}
