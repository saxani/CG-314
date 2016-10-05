//Nailah Duliepre - Robot

float x;
float y;
float angle = 0.0;
float xOffset;
float yOffset;
float scalar = -30;
float speed = 0.05;

float diameter = 50;
float radius = diameter/2;
float xDirection;
float yDirection;

int timer1 = 4000;
int timer2 = 9000;



void setup (){
  size(600, 600);
  x = width/2;
  y = height/2;
  xOffset = width/2;
  yOffset = height/2;
  background(#7FCEF7);
  strokeWeight(4);
}

void draw (){
  float circX = xOffset + sin(angle) * scalar;
  float circY = yOffset + cos(angle) * scalar;
  
   if (millis() >timer1){
    xDirection = random (-2, 2);
    yDirection = random (-2, 2);
  }else if (millis() > timer2) {
    if (xDirection<0) {
      xDirection = -2;
    }else {
      xDirection = 2;
    }
    if (yDirection<0) {
      yDirection = -2;
    }else {
      yDirection = 2;
    }
  }
  x = x + xDirection;
  y = y + yDirection;
 
  

  //robot
  //head light
  fill(random(0,255),(230),(0));
  ellipse(circX, circY - 230, 30, 30);
  //antenna
  fill(#FA0015);
  rect(x-3, y-175, 4, 9, 1);
  //ears left/right
  fill(#04AF46);
  ellipse(x-30, y-122, 50, 50);
  ellipse(x+30, y-122, 50, 50);
  //head
  fill(#FA0015);
  rect(x-40, y-159, 80, 80);
  //body
  fill(#FA0015);
  rect(x-60, y-70, 120, 140, 1);
  //eyes
  fill(random(0,255),(230),(0));
  ellipse(x, y-126, 54, 54);
  //arms left/right
  fill(#FA0015);
  rect(x-89, y-70, 23, 140);
  rect(x+66, y-70, 23, 140);
  //feet left/right
  fill(#FA0015);
  rect(x-80, y+78, 57, 26, 1);
  rect(x+21, y+78, 57, 26, 1);
  fill(#04AF46);
  ellipse(x-67, y+123, 25, 25);
  ellipse(x-30, y+123, 25, 25);
  ellipse(x+30, y+123, 25, 25);
  ellipse(x+67, y+123, 25, 25);
  
  //movement
  angle+=speed;
  
}