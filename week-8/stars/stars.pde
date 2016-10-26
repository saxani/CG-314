int amount = 100;

float [] x = new float [amount];
float [] y = new float [amount];
float [] shade = new float [amount];
float [] diameter = new float [amount];

void setup () {
  size(800, 600);
  for (int i = 0; i<x.length; i++) {
    x[i] = random (1, width);
    y[i] = random(1, height);
    shade[i] = random (100, 220);
    diameter[i] = random (2, 8);
  }
}

void draw() {
  background(0);
  for (int i = 0; i<x.length; i++) {
    fill(shade[i]);
    ellipse(x[i], y[i], diameter[i], diameter[i]);
    y[i]+= 0.1;
    if (y[i]>height) {
      y[i] = 0;
    }
  }
}