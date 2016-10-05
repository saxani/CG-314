//Rinay Apostolopoulos
//Coma the Doof Warrior
//Homework # who even knows at this point

//Personal To-Do List:
//give him sunglasses with lowered alpha (transparency)
//change his expressions using keyPressed ex:(key='a')
//give him crazy-eyes (random jittering) when angry
//random jittering on picking hand
//random sliding back and forth along diagonal fretboard on fretting hand
//add text explaining instructions (and figure out how to change font size)
//gradually growing mohawk with color changing depending on mouse location
//have transparent fire (circle particles) with randomized colors burst out of guitar while making him strum his arm in an epic, quick rotating motion 
//add background (inclusing animated speakers?)

float angle = 50;
float footangleX=0;
float footangleY=0;
float step;
//float x;
//float y;
float lefteyeX;
float lefteyeY;
float righteyeX;
float righteyeY;
float strumAngle=0;
float handJitter;
float pickhandX;
float pickhandY;
float frethandX=231;
float frethandY=0;

float startX= width/2+0;
float startY= height/2-100;
float x=startX;
float y=startY;
float pct = 0.0; //percentage travelled
float stepup = 0.005; //percentage increase (how fast it's going)
int stopY = 0;
int stopX =width;

float circleX=50;
float fireAngle;

void setup() {
  size(1080, 650);
}

void draw() {
  background(201, 232, 255);
  
  //instructions
  fill(0);
 text("INSTRUCTIONS",100,85);
 text("1) HOLD DOWN 'S' FOR 'SHADES'",100,120);
 String s= "2) HOLD DOWN LEFT MOUSE BUTTON AND MOVE CURSOR SIDE TO SIDE TO CHANGE HAIR";
text(s,100,140,200,50);
text("3) HOLD DOWN 'F' FOR 'FUCK YEAH'",100,210);
text("4) CLOSE PROCESSING FOREVER...", 100, 245);


  //fretting arm
  fill(220, 16, 16);
  noStroke();
  pushMatrix();
  translate(width/2+26, height/2+-34);
  rotate(angle-0.6);
  rect(0, 0, 32, 70); //right arm (my right)
  rect(3, 69, 36, 99);
  popMatrix();

  //left legs for dayz
  pushMatrix();
  fill(234, 19, 19);
  noStroke();
  //rect(409, 445, 144, 37); //right leg (my right)
  translate(width/2+-20, height/2+110);
  rotate(angle+1.1);
  //rect(515,447 , 37, 85);
  //rect(462,519 , 37, 101);
  rect(0, 0, 44, 85);
  rotate(angle+-0.5);
  rect(-59, 63, 44, 101);
  fill(100, 80, 73);
  rect(-59, 78, 45, 86);
  rect(-55, 126, -48, 38);
  ellipse(-84, 139, 46, 50);
  popMatrix();

  //right legs for dayz
  pushMatrix();
  fill(234, 19, 19);
  noStroke();
  //rect(409, 445, 144, 37); //right leg (my right)
  translate(width/2+61, height/2+133);
  rotate(angle+6.0);
  //rect(515,447 , 37, 85);
  //rect(462,519 , 37, 101);
  rect(4, -15, 44, 85);
  rotate(angle+0.7);
  fill(255, 244, 229);
  rect(34, 43, 38, 100);
  fill(234, 19, 19);
  rect(29, 43, 44, 27);
  popMatrix();

  //tapping foot
  if (footangleY>.2) {
    footangleY=-.7;
  }

  pushMatrix();
  translate(688, 560);
  rotate(footangleY+0);
  fill(255, 244, 229);
  //quad(688,592,683,560,723,572,731,588);
  quad(-14, 30, -28, -9, 42, 17, 32, 28);
  footangleY=footangleY+.1;
  popMatrix();

  //butt lmao
  fill(234, 19, 19);
  noStroke();
  quad(528, 424, 529, 470, 617, 458, 634, 420);



  //body
  pushMatrix();
  fill(234, 19, 19);
  noStroke();
  translate(width/2+-74, height/2+-58);
  rotate(angle);
  rect(0, 0, 123, 191, 203, 113, 0, 0);
  //angle=angle+1;
  popMatrix();




  //guitar
  pushMatrix();
  //translate(width/2+61, height/2+133);
  translate(539, 465);
  rotate(angle+5.9);
  fill(190);
  noStroke();
  ellipse(0, 0, 100, 118); //geet body
  rect(0, -43, 64, 89);
  rect(50, -43, 36, 30);
  ellipse(87, -28, 30, 30);
  rect(50, 16, 36, 30);
  ellipse(82, 31, 30, 30);
  fill(203, 154, 125);
  rect(62, -28, 162, 22); //geet neck 1
  rect(62, 6, 193, 22); // geet neck 2
  fill(190);
  rect(223, -32, 49, 30); //geet head 1
  rect(253, 2, 49, 30); // geet head 2
  //ellipse(508, 450, 100, 118); //geet body
  //rect(508, 407, 64, 89);
  //rect(558, 407, 36, 30);
  //ellipse(595, 422, 30, 30);
  //rect(558, 466, 36, 30);
  //ellipse(590, 481, 30, 30);
  //fill(203, 154, 125);
  //rect(570, 422, 162, 22); //geet neck 1
  //rect(570, 456, 193, 22); // geet neck 2
  popMatrix();



  //head
  fill(255, 244, 229);
  noStroke();
  ellipse(width/2, 175, 170, 167); //forhead
  ellipse(width/2+19, 223, 150, 116); //cheek
  ellipse (width/2-61, 218, 69, 66); //ear
  fill(0); //eye shadows
  rect (497, 152, 60, 60, 81, 168, 9, 32); //left eye shadow
  rect (566, 152, 54, 60, 42, 27, 90, 16); //right eye shadow
  fill(255); //eyes
  ellipse (530, 185, 40, 40); //left eye
  ellipse (594, 185, 40, 40); //right eye
  fill(0); //pupils
  //ellipse(530, 185, 10, 10); //left pupil
  //ellipse(594, 185, 10, 10); //right pupil
  triangle(563, 208, 555, 229, 580, 228); //nose
  stroke(0); //mouth
  strokeWeight(5);
  line(557, 250, 593, 250);
  strokeWeight(2);
  line(559, 238, 561, 249);
  line(570, 239, 571, 249);
  line(580, 236, 582, 250);
  line(590, 238, 592, 251);
  line(567, 249, 566, 260);
  line(576, 252, 576, 259);
  line(587, 253, 587, 260);
  //eye pupils
  ellipse(lefteyeX, lefteyeY, 10, 10); //left pupil
  ellipse(righteyeX, righteyeY, 10, 10); //left pupil





  //timers specifics
  lefteyeX+=random(-step, step);
  lefteyeY+=random(-step, step);
  righteyeX+=random(-step, step);
  righteyeY+=random(-step, step);

  lefteyeX=constrain (lefteyeX, 520, 540);
  lefteyeY=constrain (lefteyeY, 180, 190);
  righteyeX=constrain (righteyeX, 584, 604);
  righteyeY=constrain (righteyeY, 180, 190);


  //timers
  if (millis() >4000) { //back to normal (with added eyebrows)
    step = 0;
    lefteyeX=530; //ensures pupil ends at this x axis
    lefteyeY=185; //ensures pupil ends at this y axis
    righteyeX=594; //ensures pupil ends at this x axis
    righteyeY=185; //ensures pupil ends at this y axis
    strokeWeight(8); //eyebrows
    line(512, 144, 552, 164);
    line(604, 145, 569, 164);
  } else if (millis()>3000) { //crazy eyes and mouth open
    step=5;
    fill(0);
    strokeWeight(8); //eyebrows
    line(512, 144, 552, 164);
    line(604, 145, 569, 164);
    noStroke();
    fill(255, 244, 229);
    rect(545, 235, 55, 33);
    stroke(0);
    strokeWeight(3);
    fill(0);
    ellipse(572, 263, 32, 45); //mouth?
    fill(0);
    quad(508, 181, 555, 203, 548, 207, 508, 204); //left bottom eyelid
    quad(615, 175, 610, 205, 576, 208, 573, 200); //right bottom eyelid
  } else if (millis()>2300) { //eyes open from second blink
    fill(255); //eyes
    ellipse (530, 185, 40, 40); //left eye
    ellipse (594, 185, 40, 40); //right eye
    fill(0);
    ellipse(530, 185, 10, 10); //left pupil
    ellipse(594, 185, 10, 10); //right pupil
  } else if (millis()>2200) { //second blink
    noStroke();
    fill(0);
    rect (497, 152, 60, 60, 81, 168, 9, 32); //left eye shadow
    rect (566, 152, 54, 60, 42, 27, 90, 16); //right eye shadow
    stroke(255);
    strokeWeight(3);
    line(509, 172, 550, 191);
    line(509, 198, 550, 191);
    line(608, 171, 578, 189);
    line(611, 196, 577, 190);
  } else if (millis()>2100) { //eyes open from first blink
    fill(255); //eyes
    ellipse (530, 185, 40, 40); //left eye
    ellipse (594, 185, 40, 40); //right eye
    fill(0);
    ellipse(530, 185, 10, 10); //left pupil
    ellipse(594, 185, 10, 10); //right pupil
  } else if (millis()>2000) { //first blink
    noStroke();
    fill(0);
    rect (497, 152, 60, 60, 81, 168, 9, 32); //left eye shadow
    rect (566, 152, 54, 60, 42, 27, 90, 16); //right eye shadow
    stroke(255);
    strokeWeight(3);
    line(509, 172, 550, 191);
    line(509, 198, 550, 191);
    line(608, 171, 578, 189);
    line(611, 196, 577, 190);
  } else if (millis()>0000) { //starts normal
    step=0;
    lefteyeX=530; //ensures pupil starts at this x axis
    lefteyeY=185; //ensures pupil starts at this y axis
    righteyeX=594; //ensures pupil starts at this x axis
    righteyeY=185; //ensures pupil starts at this y axis
  }

  //keys pressed
  if (keyPressed==true&&key=='s') { //s is for shades
    stroke(0);
    strokeWeight(5);
    fill(0, 225);
    rect (483, 160, 74, 57, 14, 15, 45, 55); //left sunglass
    rect (569, 160, 70, 57, 15, 13, 84, 67); //right sunglass
    fill(0);
    rect(558, 167, 15, 16);
    rect(456, 167, 33, 13);
    ellipse(452, 177, 8, 20);
    rect(504, 166, 47, 16); //top eyelids
    rect (576, 164, 39, 19);
    // strokeWeight(8); //eyebrows
    //line(512, 144, 552, 164);
    //line(604, 145, 569, 164);
  }

  //mohawk front
  if (mousePressed&& mouseButton==LEFT) {
    if (mouseX>0 &&mouseX<100) {
      fill(0); //black
    } else if (mouseX>100 && mouseX<200) {
      fill(133, 63, 144); //purple
    } else if (mouseX>200&&mouseX<300) {
      fill(18, 83, 193); //blue
    } else if (mouseX>300&&mouseX<400) {
      fill(29, 240, 224); //teal
    } else if (mouseX>400&&mouseX<500) {
      fill(81, 142, 31); //green
    } else if (mouseX>500&&mouseX<600) {
      fill(247, 242, 143); //yellow
    } else if (mouseX>600&&mouseX<700) {
      fill(255, 169, 31); //orange
    } else if (mouseX>700&&mouseX<800) {
      fill(240, 35, 12); //red
    } else if (mouseX>800&&mouseX<900) {
      fill(252, 198, 166); //pink
    } else if (mouseX>900&&mouseX<1000) {
      fill(255);
    } else if (mouseX>1000) {
      fill(random(255), random(255), random(255)); //random
    }

    noStroke();
    //fill(0);
    rect(544, 46, 30, 83);

    //mohawk side
    //float mohawkX=533, mohawkY=95, mohawkWidth=33, mohawkHeight=88;
    noStroke();
    //fill(0);
    //arc(mohawkX, mohawkY, mohawkWidth, mohawkHeight, 22, 26);
    //triangle(546, 46, 564, 85, 531, 51);
    //mohawkX+=2;
    //mohawkY+=2;
    //mohawkWidth+=3;
    //mohawkHeight+=3;
    arc(533, 95, 33, 88, 22, 26);
    triangle(546, 46, 564, 85, 531, 51);
  }

  //picking hand timers
  pickhandX+=random(-handJitter, handJitter);
  pickhandX=constrain (pickhandX, 15, 20);
  pickhandY=constrain (pickhandY, 180, 195);

  ////picking arm
  //  pushMatrix();
  //fill(220, 16, 16);
  //translate(481,285);
  //rotate(strumAngle);
  //noStroke();
  //rect(0, 0, 32, 70); //left arm (my left)
  //rect(0, 69, 36, 99);
  ////rect(478, 306, 32, 70); //left arm (my left)
  ////rect(474, 376, 36, 99);
  //fill(255, 244, 229);
  //handJitter=15;
  //ellipse(pickhandX, pickhandY, 48,48); //left hand (pick hand)
  ////ellipse(18, 185, 48,48); //left hand (pick hand)
  //ellipse(231, 85, 48,48); //right hand (fret hand)
  //popMatrix();

  //picking arm
  pushMatrix();
  fill(220, 16, 16);
  translate(481, 285);
  rotate(strumAngle+50);
  noStroke();
  rect(0, 0, 32, 70); //left arm (my left)
  rect(0, 69, 36, 99);
  //rect(478, 306, 32, 70); //left arm (my left)
  //rect(474, 376, 36, 99);
  fill(255, 244, 229);
  handJitter=15;
  ellipse(pickhandX, pickhandY, 48, 48); //left hand (pick hand)
  //ellipse(18, 185, 48,48); //left hand (pick hand)
  popMatrix();

  //fretting hand
  float slideupX=300; 
  pushMatrix();
  translate(481, 285);
  rotate(0);
  fill(255, 244, 229);
  ellipse(frethandX, 85, 48, 48); //right hand (fret hand)
  frethandX=frethandX+1;

  float neckangle=50;
  if (frethandX>250) {
    translate(230, 85);
    rotate(neckangle+51);
    ellipse(0, 0, 48, 48);
    frethandX=235;
  }

  //}else if(frethandX=slideupX){
  // ellipse(frethandX, 85, 48, 48);
  // frethandX=frethandX-1;
  //}
  popMatrix();


  //strumming arm
  //pushMatrix();
  //fill(220, 16, 16);
  //translate(481,285);
  //rotate(strumAngle);
  //noStroke();
  //rect(0, 0, 32, 70); //left arm (my left)
  //rect(0, 69, 36, 99);
  ////rect(478, 306, 32, 70); //left arm (my left)
  ////rect(474, 376, 36, 99);
  //strumAngle+=.3;
  //popMatrix();
  
    //flames
  if(keyPressed&&key=='f'){
  pushMatrix();
  translate(width-234, height/2-100);
  rotate(fireAngle-.5);
  fill(random(200,225),random(100),0);
  ellipse(circleX, 47, random(20,90),random(20,30));
   ellipse(circleX-90, random(50), random(20,90),random(20,30));
    ellipse(circleX-110, random(20,100), random(40,90),random(20,30));
    circleX+=5;
    
  //ellipse(circleX,180,24,24);

  circleX=circleX+10;

  if (circleX>=width) {
    ellipse(width, 180, 24, 24);
    //width=width-3; //fun fact: this horribly fucked up my code
  }
  //x++; //makes the ball move along x axis
  //x=x+3; //increases speed of ball's movement. can also be written as x+=3;
  if(circleX>width){ //this makes the ball come back after it leaves the screen (if x is greater than the width.. aka if x goes past the width
  circleX=0; //this makes the ball come back from the 0 coordinate at the x axis 
  }

  ellipse(random(-160, width), random(0, -height/2), random(20, 60), random(20, 60));
  //if (pct<1.0) {
    //x=startX +((stopX-startX) *pct);
    //y=startY+((stopY-startY)*pct);
    //pct+=stepup;
  //}

  popMatrix();
  

  //strumming arm
  pushMatrix();
  fill(220, 16, 16);
  translate(481,285);
  rotate(strumAngle);
  noStroke();
  rect(0, 0, 32, 70); //left arm (my left)
  rect(0, 69, 36, 99);
  //rect(478, 306, 32, 70); //left arm (my left)
  //rect(474, 376, 36, 99);
  strumAngle+=.3;
  popMatrix();
  }
}
