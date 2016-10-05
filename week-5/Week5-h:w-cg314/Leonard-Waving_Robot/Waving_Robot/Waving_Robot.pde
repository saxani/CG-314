PImage anger;
PImage anger2;
float head = 150;
float body = head+250;
float wave = 220;
float direction = 2;

void setup() {
  anger = loadImage("Blowing Wind.png");
  anger2 = loadImage("Blowing Wind - Copy (3).png");
  size(600, 600);

  }




void draw () {

background(39, 138, 222);

  //head

  noStroke();
  fill(206, 158, 12);
  rect(head, head, 250, 250);



  fill(255, 198, 24);
  rect(head+15, head+15, 220, 220);


  //mouth
  fill(240, 113, 113);
  rect(head+100, head+200, 50, 15);





  //body

  fill(206, 158, 12);
  rect(head, head+275, 250, 250);
  fill(255, 198, 24);
  rect(head+15, head+295, 220, 220);

  //eyes
  pushMatrix();
  translate(200, 300);
  fill(0);
  rect(0, 0, 30, 30);
  popMatrix();

  pushMatrix();
  translate(325, 300);
  rect(0, 0, 30, 30);
  popMatrix();

  //antena
  fill(255, 198, 24);
  rect(head+200, 70, 25, 80);

  //buttons
  fill(255);
  ellipse(255, 440, 50, 50);
  ellipse(295, 440, 50, 50);



  //pineal gland

  fill(3, 193, 255);
  triangle(head+75, head+55, head+175, head+55, head+125, head+125);
  fill(3, 170, 255);
  triangle(head+85, head+60, head+165, head+60, head+125, head+115);

  if (mousePressed && mouseX < head+225 && mouseX >head+200 && mouseY < head && mouseY > head-80) {
    image(anger, head+270, head+50);
    image(anger2, head-220, head+50);
    strokeWeight(2);
    stroke(1);
    noFill();
    arc(head-20, head-10, 30, 30, PI, PI+HALF_PI);
    arc(head-10, head, 30, 30, PI, PI+HALF_PI);
    arc(head+270, head-10, 30, 30, PI+HALF_PI, TWO_PI);
    arc(head+260, head, 30, 30, PI+HALF_PI, TWO_PI);
    noStroke();
    fill(255, 198, 24);
    rect(200, 300, 160, 10);
    rect(200, 320, 160, 10);
    rect(head+100, head+200, 50, 15);
    fill(255, 50, 50);
    triangle(head+75, head+55, head+175, head+55, head+125, head+125);
  }

  //shy sun
  if (mouseX > 480 && mouseY < 140) {
    fill(39, 138, 222);
    rect(head+250, 0, 200, height);
    rect(0, 0, head, height);
    fill(255, 198, 0);
    ellipse(580, 30, 200, 200);
  } else {
    fill(39, 138, 222);
    ellipse(580, 30, 220, 220);
  }
  
  if(mousePressed && mouseX < head+250 && mouseX > head && mouseY > head+275){
  pushMatrix();
  translate(head+250, head+300);
  rotate(radians(wave));
  fill(255, 198, 0);
  rect(0, 0, 30, 200);
  wave++;
    popMatrix();
  }
}