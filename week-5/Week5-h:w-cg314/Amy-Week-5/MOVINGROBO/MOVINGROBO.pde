float a = 10; 
float b = 10; 
float tool = 0;

float angle = 0.0;
float yOffset;
float y2Offset;
float xOffset;
float scalar2 = 200;

float scalar = 80;
float speed = 0.05;

float x;
float y;
float z;
float diameter = 50;
float radius = diameter/2;
float xDirection = 50;
float yDirection = 50;
float zDirection = 50;

float x1 = 300;

void setup() {
  size(1280, 720);
  background (255);
  yOffset = height/2;
  y2Offset = height/2;
  xOffset = width/2;
}

void robo() {


  float xy = xOffset = sin(angle) * scalar;
  float yx = y2Offset = cos(angle) * scalar;

  float y1 = yOffset + sin(angle) * scalar;
  float y2 = yOffset + sin(angle + 0.4) * scalar;
  float y3 = yOffset + sin(angle + 0.8) * scalar;
  float y4 = yOffset + sin(angle + 1.2) * scalar;
  float y5 = yOffset + sin(angle + 1.6) * scalar;
  float y6 = yOffset + sin(angle + 2.1) * scalar;

  //robo
  float y7 = yOffset + sin(angle + 2.1) * scalar;
  float y8 = yOffset + sin(angle + 2.7) * scalar;


  //ball
  strokeWeight(1);
  stroke(random(1, 255), random(1, 255), random(1, 255));
  fill(random(55, 255), 1, 1, 90);
  ellipse(x, yOffset, random(1, 20), random(1, 100));

  strokeWeight(0);
  fill(1, random(1, 255), 1, 50);
  ellipse(x+(random(1, 20)), y-(random(50, 100)), random(1, 20), random(1, 20));

  strokeWeight(0);
  fill(1, 1, random(1, 255), 50);
  ellipse(x-z, y+z, random(1, 50), random(1, 50));

  fill(random(55, 255), 1, 1, 90);
  ellipse(x, y, random(1, 100), random(1, 20));

  //movement
  x = x + xDirection;
  y=y + yDirection;
  if (x > width - radius || x < radius) {
    xDirection = -xDirection;
  }
  if (y > height - radius || y < radius) {
    yDirection = -yDirection;
  }
  if (z >width - radius || z < radius) {
    zDirection = -zDirection;
  }

  //ball
  strokeWeight(3);
  stroke(random(100, 255), random(100, 255), random(100, 255));
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(x1 - 60, y1, 10, 10);
  ellipse(x1, y2, 20, 20);
  ellipse(x1 + 60, y3, 30, 30);
  ellipse(x1 + 120, y4, 40, 40);
  ellipse(x1 + 180, y5, 50, 50);
  ellipse(x1 + 240, y6, 60, 60);

  //robo
  strokeWeight(5);
  stroke(0);

  //arm1
  fill(150, 50, 100);
  triangle(mouseX, mouseY, x1 + 600, y7+150, x1 + 600, y7+200);
  //legs
  fill(150, 50, 100);
  rect(x1 + 200, y8+100, 100, 50);
  rect(x1 + 200, y8+100, 20, 70);
  fill(100, 1000, 1000);
  rect(x1 + 200, y8+50, 100, 50);
  rect(x1 + 200, y8+50, 20, 70);
  //body
  fill(150, 50, 100);
  rect(x1 + 300, y7, 300, 200);
  fill(100, 1000, 1000);
  rect(x1 + 300, y7, 300, 50);
  //arm2
  fill(100, 1000, 1000);
  triangle(mouseX, mouseY-200, x1 + 600, y7+50, x1 + 600, y7);
  //head
  fill(150, 50, 100);
  rect(xy+900, yx+400, 100, 140);
  fill(100, 1000, 1000);
  rect(xy+900, yx+400, 100, 40);

  //face
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(xy+960, yx+465, 20, 20);
  ellipse(xy+960, yx+515, 20, 20);
  rect(xy+910, yx+465, 20, 50);
  angle+=speed;
}


void draw() {
  fill(0, 255, 0);
  rect(a, b+100, 60, 60);
  fill(255, 0, 0);
  rect(a, b+200, 60, 60);
  
  textSize(18);
  fill(0);
  text("AfterImg ON",10,100);
  text("AfterImg OFF",10,200);


  if (mouseX > 10 && mouseX < 70 && mouseY> 100 && mouseY < 150) { 
    tool =1;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 180 && mouseY < 300) { 
    tool =2;
  }

  if  (tool == 1&& mousePressed) {
    fill(0, 255, 150);
    rect(a, b+100, 60, 60);
    robo();
  } else if (tool == 2&& mousePressed) {
    fill(255, 0, 100);
    rect(a, b+200, 60, 60);
    background (255);
    robo();
  }
}
