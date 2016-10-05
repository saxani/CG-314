float x =100;
float y = 50;
float x1 = 0;

float diameter = 50;
float radius = diameter/2;
float direction = 2;

void setup() {
  size(800, 600);

}
  void draw() {
    background(0,255,0);

    // Legs
    // Leg_L
    strokeWeight(3);
    strokeJoin(ROUND);
    rect(x1+x+x+y-10, x+x+x+y+y-5, 15-y, 45+y);
   
    // Leg_R
    rect(x1+x+x+y+y-5, x+x+x+y+y-5, 15-y, 45+y);
    // Body
    strokeWeight(3);
    ellipse(x1+x+x+y, x+x+x+y, x, x+x);
    // Head
    strokeWeight(3);
    ellipse(x1+x+x+y, x+x+y, y, y);
    // Eyes
    // Eye_L
    strokeWeight(1);
    fill(0);
    ellipse(x1+x+x+y-15, x+x+y, y-45, y-45);
    // Eye_R
    fill(0);
    ellipse(x1+x+x+y+15, x+x+y, y-45, y-45);
    
    fill(255);
    strokeWeight(3);
    //Arms
    //Arm_L
    ellipse(x1+x+x, x+x+x+y-20, 15-y, x);
    //Arm_R
    ellipse(x1+x+x+x, x+x+x+y-20, 15-y, x);
    // Hands
    // Hand_L
    ellipse(x1+x+x+x, x+x+x+y+25, y-20, y-20);
    // Hand_R
    ellipse(x1+x+x, x+x+x+y+25, y-20, y-20);

   x1 = x1 + direction;
    if (x1 > width - radius || x < radius) {
      direction = -direction;
    }
  }