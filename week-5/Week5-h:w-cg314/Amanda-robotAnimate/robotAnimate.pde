//Amanda Hernandez
//AnimatedRobotHW

String quote="Amanda Hernandez";

float angle=0.9;
float offset =340;
float scalar= 20;
float speed=0.1;

int armAngle = 0;
int angleChange = 5;
final int ANGLE_LIMIT = 170;


void setup(){
  size(800,700);
  smooth();
  frameRate(15);

}

void draw(){
  //background
  background(100);
  //concert backgound
  for (int y=0; y<=height; y+=40) {
  for(int x=0; x<=width; x+=40) {  
  ellipse(x,y,40,40);
  noStroke();
  fill(50);
  rect(0,width/1.8,800,200);//floor
  fill(100);
  rect(0,width/1.3,800,100);//side of floor
  fill(255);
  textSize(24);
  text(quote,100,680);//signature
  fill(255);
  }
  }
  
  //Robot neck
  strokeWeight(3);
  stroke(147,234,213);
  fill(82,124,114);
  triangle(370,300,400,160,430,300);//neck

  //Robot legs and feet
  smooth();
  strokeWeight(3);
  stroke(147,234,213);
  fill(82,124,114);
  strokeJoin(BEVEL);
  rect(420,370,10,170);//left leg
  rect(370,370,10,170);//right leg
   //start of arm animation
  pushMatrix();
  translate(375,225);//arm location
  drawWave();
  armAngle+= angleChange;
  
  
  // if the arm has moved past its limit,
  // reverse direction and set within limits.
  if (armAngle > ANGLE_LIMIT || armAngle < 0)
  {
    angleChange = -angleChange;
    armAngle += angleChange;
  }
  popMatrix();
}

  void drawWave(){
 

  pushMatrix();
  translate(60,50);
  rotate(radians(-armAngle));
  fill(82,124,114);
  stroke(147,234,213);
  rect(0,0,9,130);//right arm
  ellipse(-1.5,130,25,25);
  //line(-1.5,130,5,4);//last left middle
  fill(0);
  popMatrix();

  //end of arm animation
  

  //animating up and down motion
  float y1= offset +sin(angle)*scalar;
  
  //antennas
  translate(-375,-230);
  stroke(213,255,31);
  strokeWeight(5);
  noFill();
  curve(60,60,y1+35,130,y1-5,60,600,800);//left antenna
  curve(60,60,y1+45,130,y1+140,60,600,800);//right antenna
  
  //robot Body
  strokeWeight(3);
  fill(82,124,114);
  stroke(147,234,213);
  ellipse(width/2,y1,100,200);//body
  rect(400,y1-40,30,30);// heart box
  line(440,y1+40,360,y1+40);//bottom line on body
  line(440,y1-60,360,y1-60);//top line on body
  line(440,y1+50,360,y1+50);//second bottom line on body
  fill(random(0,200),100,200);
  ellipse(390,y1-55,20,20);//body button
  fill(82,124,114);
  ellipse(440,y1-70,30,40);//right shoulder
  ellipse(440,y1-70,15,15);//right shoulder screw    
  strokeWeight(4);
  
  //Robot right arm and shoulder
  strokeWeight(3);
  triangle(y1,y1-10,y1,y1,360,270);//left upper arm
  ellipse(360,y1-70,30,40);//left shoulder
  line(y1,y1+70,y1,y1-10);//left lower arm
  ellipse(y1,y1+70,25,25);//left hand
  ellipse(360,y1-70,15,15);//left shoulder screw
  
   //Robot head
   
  strokeWeight(3);
  stroke(147,234,213);
  ellipse(340,y1-190,30,40);//left ear
  ellipse(460,y1-190,30,40);//right ear
  ellipse(400,y1-190,y1/2.8,y1/2.9);//head
  arc(400,y1-180,y1/5,y1/5,0,radians(180));//smile
  fill(240,247,40);//eye colors
  ellipse(370,y1-210,30,40);//left eye
  ellipse(430,y1-210,30,40);//right eye
  noFill();
  ellipse(375,y1-210,y1/20,y1/15);//leftpupil
  ellipse(425,y1-210,y1/20,y1/15);//right pupil
  line(440,y1-237,360,y1-237);//top head line
  fill(82,124,114);
  ellipse(425,y1+140,y1/10,y1/20);//right knee
  ellipse(425,y1+140,y1/20,y1/40);//right knee screw
  ellipse(375,y1+140,y1/10,y1/20);//left knee
  ellipse(375,y1+140,y1/20,y1/40);//left knee screw
  
  //Robot feet
  rect(400,540,y1/8,y1/20);//left foot 
  rect(350,540,y1/8,y1/20);//right foot
  
  angle+=speed;
  
  //right corner heart
  translate(20,20);
  stroke(166,242,68);
  smooth();
  strokeWeight(2);
  fill(60);
  beginShape();
  vertex(50,15);
  bezierVertex(50,-5,90,5,50,40);
  vertex(50,15);
  bezierVertex(50,-5,10,5,50,40);
  endShape();
  
 
  
}