//Shaun Axani Pong Example

//Ball tracking x and y
float x;
float y;

//Square ball size and speed variables
float diameter = 20;
float radius = diameter/2;
float xDirection = 5;
float yDirection = 5;

//Paddle height and width
float paddleH = 80;
float paddleW = 20;

void setup() {
  size(800, 600);
  x = radius;
  y = height/2;
}

void draw () {
  background(0);
  noStroke();
  fill(255);
  rectMode(CENTER);

  //court lines
  for (int i = 0; i<height+20; i+=25) {
    rect(width/2, i, 5, 15);
  }

  //ball
  rect(x, y, diameter, diameter);


  //paddle
  rect(15, mouseY, paddleW, paddleH);

  //movement of the ball
  x = x + xDirection;
  y = y + yDirection;

  //Check to see if it hits the paddle
  if (x <= 20) { //Check to see if the ball is even near where the paddle is
    //If it is, see if it's within where the height of the paddle, then switch the direction the ball is travelling
    if (y > mouseY - paddleH/2 && y < mouseY + paddleH/2) {
      xDirection = -xDirection;
    }
  }

  //Check for three walls
  if (x > width - radius) {
    xDirection = -xDirection;
  }
  if (y > height - radius || y < radius) {
    yDirection = -yDirection;
  }
}