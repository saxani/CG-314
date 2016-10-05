//robot

//Variables
float angle = 0.0;
float xOffset;
float yOffset;
float scalar = 50;
float speed = 0.5;
float diameter = 50;
float radius = diameter/2;

void setup () {
  size (640, 480);
  smooth();
  frameRate(25);
  xOffset = width/2;
  yOffset = height/2;
}

  void draw () {

    background (#BFFFEB);

    //Robot
    float x = xOffset + sin(angle) * scalar;
    float y = yOffset + cos(angle) * scalar;
    stroke(#00899D);
    strokeWeight(8);
    line(x-50, y, x, y + 75);
    line(x+50, y, x, y + 75);
    noStroke();
    fill(#00AFCB);
    rect(x-diameter, y+50, 2*diameter, 100); //Body
    ellipse(x-50, y, diameter, diameter); //Eyes
    ellipse(x+50, y, diameter, diameter);
    fill(#BFFFEB); //Eyes
    ellipse(x-50, y, 25, 25);
    ellipse(x+50, y, 25, 25);
    fill(#BFFFEB);//Mouth
    rect(x-diameter+10, y+110, diameter/3, 20);
    rect(x-diameter+43, y+110, diameter/3, 20);
    rect(x-diameter+75, y+110, diameter/3, 20);

    //Movement
    angle+=speed;
  }