int startX = 100;
int stopX = 700;
int startY = 100;
int stopY = 560;

float x = start
float y;

float diameter = 50;
float radius = diameter/2;
float xDirection = 3;
float yDirection = 3;

void setup() {
  size(800, 600);
  x = radius;
  y = height/2;
}

void draw () {
  background(19, 211, 40);
  stroke(255);
  strokeWeight(3);
  noFill();
  //tennis lines
  rect(10, 10, width-20, height-20);
  rect(width/4, height/8, width/2, height*0.75);
  line(width/4, height/2, width*0.75, height/2);
  line(10, height/8, width-10, height/8);
  line(10, height * 0.875, width-10, height * 0.875);
  line(width/2, 0, width/2, height); //Court line

  //ball
  stroke(0);
  fill(240, 245, 12);
  ellipse (x, y, 50, 50);

  //movement
  x = x + xDirection;
  y = y + yDirection;
  if (x > width - radius || x < radius) {
    xDirection = -xDirection;
  }
  if (y > height - radius || y < radius) {
    yDirection = -yDirection;
  }
}