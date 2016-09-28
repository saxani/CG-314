
float angle = 0.0;
float offset;
float scalar = 80;
float speed = 0.05;

void setup() {
  size(800, 600);
  offset = height/2;
}

void draw () {
  background(19, 211, 40);
  stroke(255);
  strokeWeight(3);
  noFill();
  //tennis lines
  rect(10, 10, width-20, height-20);
  rect(width/4, height/8, width/2, height*0.75);
  line(width/4, height/2, width*0.75, height/2);
  line(10, height/8, width-10, height/8);
  line(10, height * 0.875, width-10, height * 0.875);
  line(width/2, 0, width/2, height); //Court line

  float y1 = offset + sin(angle) * scalar;
  float y2 = offset + sin(angle + 0.4) * scalar;
  float y3 = offset + sin(angle + 0.8) * scalar;
   
  //ball
  stroke(0);
  fill(240, 245, 12);
  ellipse (width/2 - 60, y1, 50, 50);
  ellipse (width/2, y2, 50, 50);
  ellipse (width/2 + 60, y3, 50, 50);
  
  //movement
  angle+= speed;
  
}