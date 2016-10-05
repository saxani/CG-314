//HOLD THE BUTTON DOWN TO MAKE
//THE HAPPY ROBOT
//BOUNCE OFF THE WALL!
//Will Steacy


//robot construction vars
float x = 140; //torso width
float y = 175; //torso height

//mid-screen
float x2;
float y2;

//ouch height
float Ow = height/2 + 49;

//direction
float Dir = 10;
float DirBounce = 2;


void setup() {
  smooth(3);
  size(1280, 720);
  background(0);
  ellipseMode(CENTER);
  strokeWeight(5);
  stroke(255);
  fill(0);
  line(0, 600, 1160, 600);
  line(1160, 0, 1160, 600);
  x2 = width/2 - 100;
  y2 = height/2 + 50;
}

void draw() {
  
  background(0);
  line(0, 600, 1160, 600);
  line(1160, 0, 1160, 600);

  //ROBOT
  fill(60);
  stroke(40);
  strokeCap(ROUND);
  strokeJoin(ROUND);

  //wheel
  fill(25);
  stroke(20);
  strokeWeight(7);
  ellipse(x2, y2+y/1.3, y2/4, y2/4);
  fill(0);
  ellipse(x2, y2+y/1.3, y2/8, y2/8);

  //antennae
  stroke(150);
  strokeWeight(5);
  line(x2-x/4, y2-y/2, x2-x/4, y2-y*1.5);
  stroke(150, 0, 0);
  strokeWeight(15);
  point(x2-x/4, y2-y*1.5);

  //arm left
  fill(60);
  strokeWeight(5);
  stroke(40);
  beginShape();
  vertex(x2-x/2, y2-y/2);
  vertex(x2-x, y2+y/4);
  vertex(x2-x/1.5, y2+y/4);
  endShape(CLOSE);
  //arm right
  beginShape();
  vertex(x2+x/2, y2-y/2);
  vertex(x2+x, y2+y/4);
  vertex(x2+x/1.5, y2+y/4);
  endShape(CLOSE);

  //head
  beginShape();
  vertex(x2-x/4, y2-y/1.1);
  vertex(x2+x/4, y2-y/1.1);
  vertex(x2+x/4, y2-y/2);
  vertex(x2-x/4, y2-y/2);
  endShape(CLOSE);

  //torso
  fill(60);
  strokeWeight(5);
  stroke(40);
  beginShape();
  vertex(x2-x/2, y2-y/2);//top left
  vertex(x2+x/2, y2-y/2);//top right
  vertex(x2+x/4, y2+y/2);//bottom right
  vertex(x2-x/4, y2+y/2);//bottom left
  endShape(CLOSE);

  //leg
  beginShape();
  vertex(x2-x/4, y2+y/2);
  vertex(x2+x/4, y2+y/2);
  vertex(x2+x/8, y2+y/1.3);
  vertex(x2-x/8, y2+y/1.3);
  endShape(CLOSE);


  //midpoint of torso
  point(x2, y2);

  //button
  stroke(255);
  fill(150, 30, 30);
  rect(1175, 615, 75, 75);
  
  //happy bounce
  y2 = y2 + DirBounce;
  if (y2>height/2 + 50 || y2<height/2 + 30){
    DirBounce = -DirBounce;
  }
  

  //buttonHover
  if (mouseX>1175 && mouseX<1250 && mouseY>615 && mouseY<690) {
    fill(100, 30, 30);
    rect(1175, 615, 75, 75);
  }

  //buttonPress
  if (mousePressed && mouseX>1175 && mouseX<1250 && mouseY>615 && mouseY<690) {
    fill(50, 30, 30);
    rect(1175, 615, 75, 75);
    x2 = x2 + Dir;
    if (x2>1160-x) {
      Dir = -Dir;
    }
  }
}