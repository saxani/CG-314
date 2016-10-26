int amount = 100;
float [] x = new float [amount];
float [] y = new float [amount];


void setup () {
  size(800, 600);
  noStroke();
}

void draw() {
  background(255);
  //Giving the x and y location to the next element in an array
  for (int i = x.length -1; i>0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  x[0] = mouseX;
  y[0] = mouseY;

  for (int i = 0; i<x.length; i++) {
    fill(i*4);
    ellipse(x[i], y[i], 40, 40);
  }
}