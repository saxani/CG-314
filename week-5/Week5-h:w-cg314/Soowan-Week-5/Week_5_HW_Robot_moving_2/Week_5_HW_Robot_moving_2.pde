float x;
float y;

float diameter = 50;
float radius = diameter/2;
float xDirection = 3;
float yDirection = 3;

//Robot variables
float headSize = 200.0;
float whiteeyeSize = 3.0/20 * headSize;
float blackeyeSize = 1.0/10 * headSize;
float widthmouthSize = 49.0/200 * headSize;
float heightmouthSize = 21.0/200 * headSize;
float heightteethSize = 5.0/200 * headSize;
float noseSize = 1.0/20 * headSize;
float widthneckSize = 29.0/200 * headSize;
float heightneckSize = 3.0/25 * headSize; 
float widtharmSize = 31.0/100 * headSize;
float handSize = 1.0/4 * headSize;
float circleconnectionSize = 1.0/5 * headSize;
float widthbodySize = 3.0/4 * headSize;
float heightbodySize = 3.0/5 * headSize;
float widthtopbodySize = 110.0/200 * headSize;
float heighttopbodySize = 80.0/200 * headSize;
float widthlegSize = 34.0/200 * headSize;
float heightlegSize = 61.0/200 * headSize;
float widthfootSize = 66.0/200 * headSize;
float heightfootSize = 26.0/200 * headSize;
float wheelSize = 3.0/40 * headSize;

void setup () {
  size(800, 600);
  x = radius;
  y = height/2;
}

void draw () {
  background(255, 170, 0);
  noStroke();

  //head
  fill(168, 96, 168);
  rect(x - 27.0/100 * headSize, y - 147.0/200 * headSize, 117.0/200 * headSize, 1.0/2 * headSize);

  //white eyes
  fill(255, 255, 255);
  ellipse(x - 1.0/8 * headSize, y - 111.0/200 * headSize, whiteeyeSize, whiteeyeSize);
  ellipse(x + 33.0/200 * headSize, y - 111.0/200 * headSize, whiteeyeSize, whiteeyeSize);

  //black eyes
  fill(0, 0, 0);
  ellipse(x - 1.0/8 * headSize, y - 111.0/200 * headSize, blackeyeSize, blackeyeSize);
  ellipse(x + 33.0/200 * headSize, y - 111.0/200 * headSize, blackeyeSize, blackeyeSize);

  //nose
  fill(0, 0, 0);
  ellipse(x + 1.0/40 * headSize, y - 47.0/100 * headSize, noseSize, noseSize);

  //mouth
  fill(158, 31, 3);
  rect(x - 1.0/10 * headSize, y - 2.0/5 * headSize, widthmouthSize, heightmouthSize);

  //teeth
  fill(255, 255, 255);
  rect(x - 1.0/10 * headSize, y - 2.0/5 * headSize, widthmouthSize, heightteethSize);
  rect(x - 1.0/10 * headSize, y - 64.0/200 * headSize, widthmouthSize, heightteethSize);

  //neck
  fill(112, 30, 112);
  rect(x - 9.0/200 * headSize, y - 47.0/200 * headSize, widthneckSize, heightneckSize);

  //arms
  fill(168, 96, 168);
  rect(x - 142.0/200 * headSize, y - 9.0/200 * headSize, widtharmSize, whiteeyeSize);
  rect(x + 92.0/200 * headSize, y - 9.0/200 * headSize, widtharmSize, whiteeyeSize);

  //hands
  fill(112, 112, 112);
  ellipse(x - 146.0/200 * headSize, y + 6.0/200 * headSize, handSize, handSize);
  ellipse(x + 159.0/200 * headSize, y + 6.0/200 * headSize, handSize, handSize);

  //highlight
  fill(255, 255, 255);
  ellipse(x - 142.0/200 * headSize, y - 2.0/200 * headSize, noseSize, noseSize);
  ellipse(x + 153.0/200 * headSize, y - 2.0/200 * headSize, noseSize, noseSize);

  //circle connections
  fill(112, 30, 112);
  ellipse(x - 68.0/200 * headSize, y + 6.0/200 * headSize, circleconnectionSize, circleconnectionSize);
  ellipse(x + 81.0/200 * headSize, y + 6.0/200 * headSize, circleconnectionSize, circleconnectionSize);

  //body
  fill(168, 96, 168);
  rect(x - 68.0/200 * headSize, y - 23.0/200 * headSize, widthbodySize, heightbodySize);

  //top of body
  fill(0, 0, 0);
  rect(x - 48.0/200 * headSize, y - 4.0/200 * headSize, widthtopbodySize, heighttopbodySize);

  //Soowan
  fill(255, 255, 255);
  textSize(25.0/200 * headSize);
  text("Soowan", x - 40.0/200 * headSize, y + 45.0/200 * headSize);

  //legs
  fill(112, 30, 112);
  rect(x - 47.0/200 * headSize, y + 97.0/200 * headSize, widthlegSize, heightlegSize);
  rect(x + 29.0/200 * headSize, y + 97.0/200 * headSize, widthlegSize, heightlegSize);

  //foot
  fill(168, 96, 168);
  rect(x - 74.0/200 * headSize, y + 158.0/200 * headSize, widthfootSize, heightfootSize);
  rect(y + 24.0/200 * headSize, y + 158.0/200 * headSize, widthfootSize, heightfootSize);

  //wheels
  fill(0, 0, 0);
  ellipse(x - 64.0/200 * headSize, y + 191.0/200 * headSize, wheelSize, wheelSize);
  ellipse(x - 41.0/200 * headSize, y + 191.0/200 * headSize, wheelSize, wheelSize);
  ellipse(x - 18.0/200 * headSize, y + 191.0/200 * headSize, wheelSize, wheelSize);
  ellipse(x + 34.0/200 * headSize, y + 191.0/200 * headSize, wheelSize, wheelSize);
  ellipse(x + 58.0/200 * headSize, y + 191.0/200 * headSize, wheelSize, wheelSize);
  ellipse(x + 81.0/200 * headSize, y + 191.0/200 * headSize, wheelSize, wheelSize);

  //movement
  x = x + xDirection;
  y = y + yDirection;
  if (x>width - radius || x < radius) {
    xDirection = -xDirection;
  }
  if (y > height - radius || y < radius) {
    yDirection = -yDirection;
  }
}