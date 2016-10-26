class Rocketship {
  float x;
  float y;
  float size;
  color theColor;

  Rocketship(float tempX, float tempY, float tempSize, color tempColor) {
    x = tempX;
    y = tempY;
    size = tempSize;
    theColor = tempColor;
  }

  void move() {
    x+=2;
    if (x>width+size ) {
      x=-size;
    }
  }

  void hover() {
    x+=random (-1, 1);
    y+=random (-1, 1);
  }

  void display() {
    noStroke();
    fill(theColor);
    rectMode(CENTER);
    rect(x, y, size, size/2);
    triangle(x+size/2, y-size/4, x+size/2, y+size/4, x+size, y);

    for (int i = 0; i < 25; i++) {
      stroke(random(100, 255), random(0, 75), random(0, 75));
      noFill();
      float circleSize = random(18, 30);
      ellipse(x-size/1.5, y - size/4 + i, circleSize, circleSize);
    }
  }
}