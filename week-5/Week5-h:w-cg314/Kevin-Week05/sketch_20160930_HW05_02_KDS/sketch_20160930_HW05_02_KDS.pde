//Kevin Steele II
//Creates robot picture with strobing color and stops on the left mouse
// button, warps to center on center, and right of center on right mouse button presses
float diameter = 50;
float radius = diameter/2;
float x = 0;
float y = x;
float xDirection = 10;
float yDirection = 10;
float r, g, b;
float xCurrent = xDirection;
float yCurrent = yDirection;

void setup () {
  size (800, 600);
  smooth ();
  x = width/2;
  y = height/2;
  frameRate(25);
}

void draw () {

  background (0);

  r = random (0, 255);
  g = random (0, 255);
  b = random (0, 255);

  x = x +xDirection;
  y = y + yDirection;
  strokeWeight(0);
  fill(r, g, b);
  ellipse (x, y, 2*diameter, 2*diameter);
  fill(0);
  ellipse (x, y, diameter, diameter);
  fill(r, g, b);
  ellipse (x, y, diameter/2, diameter/2);
  rect(x-diameter, y, 2*diameter, 100);
  strokeWeight(10);
  stroke(r, g, b);
  line(x, y+100, x, y+200);
  ellipse(x, y+200, 25, 25);
  if (x > width - diameter || x < diameter)
  {

    xDirection = -xDirection;
    xCurrent = xDirection;
  }

  if (y > height- 4.5*diameter || y < diameter)
  {

    yDirection = -yDirection;
    yCurrent = yDirection;
  }


  if (mousePressed && mouseButton==LEFT)
  {
    xDirection = 0;
    yDirection = 0;
    
  } 
  else if (mousePressed && mouseButton ==CENTER)
  {
    x = width/2;
    y = height/2.5;
    x = x +xDirection;
    y = y + yDirection;
  } else if (mousePressed && mouseButton ==RIGHT)
  {
    x = (width/2)+200;
    y = height/2.5;
    x = x +xDirection;
    y = y + yDirection;
  }
 
  else
  {
    xDirection = xCurrent;
    yDirection = yCurrent;
  }
}
