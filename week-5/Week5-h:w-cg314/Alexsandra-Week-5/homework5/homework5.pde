float x;
float y;


float diameter = 50;
float radius = diameter/2;
float xDirection = 3;
float yDirection = 3;


void setup() {
  size(720, 480);
  x = radius;
  y = height/2;
}

void draw () {
  background(200, 250, 250);
  noStroke();
  
  // Body
  fill(x, y, 0); // orange
  rect(x, y, 120, 120); // Main body
  fill(x + 35, y - 100, 0); // Set fill to gray
  rect(x, y + 74, 120, 45); // Gray stripe
  rect(x + 30, y + 100, 15, 100); // leg left
  rect(x + 70, y + 100, 15, 100); // leg right
  rect(x + 70, y + 200, 65, 20); // shoe left
  rect(x - 20, y + 200, 65, 20); // shoe right

  // Head
  fill(x, y, 100); // orange
  ellipse(x + 55, y - 55, 120, 60); // Head
  fill(255); // Set fill to white
  ellipse(x + 20, y - 50, 14, 14); // Large eye
  ellipse(x + 90, y- 50,14, 14); // large eye 2
  fill(0); 
  ellipse(x + 20, y - 50, 3, 3); // Pupil
  ellipse(x + 90, y - 50, 3, 3); // pupil 2

  //movement
  x = x + xDirection;
  y = y + yDirection;
  if (x > width - radius || x < radius) {
    xDirection = -xDirection;
  }
  if (y > height - radius || y < radius ) {
    yDirection = -yDirection;
  }
}