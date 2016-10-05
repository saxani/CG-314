float x;
float y;
float z;
float diameter = 50;
float radius = diameter/2;
float xDirection = 50;
float yDirection = 50;
float zDirection = 50;

void setup() {
  size(1280, 720);
  background(0);
  x= width/2;
  y = height/2;
}

void draw() {

  //ball
  strokeWeight(1);
  stroke(random(1, 255), random(1, 255), random(1, 255));
  fill(random(55, 255), 1, 1, 90);
  ellipse(x, y, random(1, 20), random(1, 100));
  
  strokeWeight(0);
  fill(1, random(1, 255), 1, 50);
  ellipse(x+(random(1, 20)), y-(random(50, 100)), random(1, 20), random(1, 20));
  
  strokeWeight(0);
  fill(1, 1, random(1, 255), 50);
  ellipse(x-z, y+z, random(1, 50), random(1, 50));
  
  fill(random(55, 255), 1, 1, 90);
  ellipse(x, y, random(1, 100), random(1, 20));

  //movement goes across screen
  //x++;
  //if (x>width + radius) {
  //  x = -radius;
  //movement (bounces back forth
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
}
