//Enmanuel Robot
//

float x, y, y2, y2Direction, xDirection, yOffset, eX;
float angle = 0.0;
float scalar = 80;
float speed = 0.1;
float scale = 1;
color eC = color(255,255,255);


void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
  yOffset = height/2;
  y2 = 0;
  y2Direction = 1;
  xDirection = 1;
  eX = 0;
}

void draw() {
  //ellipseMode(RADIUS);
  background(0);
  movement();
  //Body
  noStroke();
  fill(200, 20, 20);
  ellipse(x-10, y-150, 200, 200);
  rect(x-110, y-150, 200, 200);
  fill(255, 0, 0);
  //rect(x-20, y-280, 40,60);
  ellipse(x, y-150, 200, 200);
  rect(x-100, y-150, 200, 200);
  //stroke(0);
  //ellipse(x, y-250,40,10);
  //ellipse(x, y-280,60,20);
  //noStroke();
  //rect(x-20, y-265, 40,15);


  //Eyes
  fill(#9CF6FA);
  rect(x-80, y-150, 160, 40);
  triangle(x-80, y-111, x+80, y-111, x, y-90);
  rect(x-20, y-100, 40, 60);
  fill(0);

  ellipse(x-40, y-125, 30, 30); // Left Eye
  fill(eC);
  ellipse(x-35+eX, y-125, 20, 20); // Iris
  fill(0);
  ellipse(x+40, y-125, 30, 30); // Right Eye
  fill(eC);
  ellipse(x+45+eX, y-125, 20, 20); // Iris

  //Mouth
  noStroke();
  //stroke(100, 20, 20);

  fill(255, 0, 0);

  rect(x-80, y-20, 160, 70+y2); 

  fill(195);
  rect(x-70, y-20, 140, 60+y2); 

  fill(155);
  rect(x-70, y-20, 130, 60+y2); 


  fill(200, 20, 20);
  for (int i = 0; i< 100; i+=20) {
    triangle(x-30+i, y-20, x-50+i, y-20, x-40+i, y+5);
  }

  for (int i = 0; i< 100; i+=20) {
    triangle(x-30+i, y+40+y2, x-50+i, y+40+y2, x-40+i, y+10+y2);
  }
}


void movement() {
  if(millis() >10000) {
    if( eX > -5 ) eX-=0.1;
    
    if( eX < -5) eC = color(255, 49, 49);
    
  }
  
  else if(millis() >9000) {
    
  }
  else if (millis() >4000) {
    background(random(255), random(255), random(255));
    speed = 0.5;
    y2= y2 +y2Direction; //Tooth
    if (y2 > 40 || y2 < 0) {
      y2Direction= -y2Direction ;
    }

    x = x +xDirection;
    if (x > width-100 || x < 110) {
      xDirection= -xDirection ;
    }

    y = yOffset +sin(angle) * scalar;
    angle+= speed;
  } 
  else if (millis() >2000) {

    //Movement
    y2= y2 +y2Direction; //Tooth
    if (y2 > 40 || y2 < 0) {
      y2Direction= -y2Direction ;
    }

    x = x +xDirection;
    if (x > width-100 || x < 110) {
      xDirection= -xDirection ;
    }

    y = yOffset +sin(angle) * scalar;
    angle+= speed;
  }
}
