//Solaris Moves!
float moveX;//full body variable x
float moveY;//full body variable y
float moveHeart;//heart variable y
float moveIt = 2;//speed of Solaris

float angle = -0.1;
float offset;
float scalar = 25;//height of heart bounce
float speed = 0.05;

void setup(){
  size(700,700);
  noStroke();
  moveX = 122;
  moveY = -60;
  moveHeart = -60;
  offset = -65;//centerpoint of heart bounce
}

void draw(){
  background(128,95,199);
  
//the head
  fill(255, 255, 255);
  ellipse(moveX+261,moveY+241,294,245);//helmet
  fill(222,235,236);
  ellipse(moveX+263,moveY+217,256,178);//helmet shadow
  fill(255, 255, 255);
  ellipse(moveX+215,moveY+175,97,71);//helmet shadow covering
    
  
  //right arm
  fill(153, 142, 142);
  rect(moveX+25,moveY+336,146,12);//top of upper arm
  fill(153, 142, 142);
  rect(moveX+25,moveY+357,146,12);//bottom of upper arm
  fill(153, 142, 142);
  rect(moveX+15,moveY+357,24,142);//lower arm
  fill(209, 201, 201);
  ellipse(moveX+27,moveY+351,49,49);//elbow joint
  fill(124, 111, 111);
  ellipse(moveX+27,moveY+351,29,29);//elbow joint screw
  fill(209, 201, 201);
  ellipse(moveX+27,moveY+494,56,56);//hand
  fill(128, 95, 199);
  ellipse(moveX+27,moveY+507,49,49);//hand subtract
  
  
  //the wheel
  fill(87,57,57);
  triangle(moveX+211,moveY+467,moveX+271,moveY+612,moveX+309,moveY+475);//leg
  fill(209, 201, 201);
  ellipse(moveX+269,moveY+635,57,69);//wheel
  fill(87,57,57);
  rect(moveX+232,moveY+596,73,21);//wheel groove
  fill(78, 71, 71);
  ellipse(moveX+269,moveY+635,31,32);//inner wheel
  fill(124, 111, 111);
  ellipse(moveX+269,moveY+635,13,14);//wheel spoke
  
  
  // the body
  fill(173,173,28);
  rect(moveX+164,moveY+254,245,243);//shaded part
  fill(234,240,57);
  rect(moveX+112,moveY+254,211,243);//front chassis
  fill(75,60,43);
  rect(moveX+346,moveY+309,47,103);//arm opening
  fill(173,173,28);
  rect(moveX+144,moveY+334,137,131);//shade by screen
  fill(87,57,57);
  rect(moveX+156,moveY+334,125,125);//screen
  fill(145, 125, 125);
  triangle(moveX+188,moveY+353,moveX+170,moveY+353,moveX+170,moveY+390);//screen glare
  fill(87, 57, 57);
  ellipse(moveX+191,moveY+384,25,56);//screen glare covering
  /*fill(222, 111, 111);
  ellipse(moveX+211,moveHeart+397,28,28);//heart
  ellipse(moveX+228,moveHeart+397,28,28);
  */triangle(moveX+240,moveHeart+404,moveX+220,moveHeart+427,moveX+199,moveHeart+404);
  fill(236, random(1,255), 247);
  rect(moveX+143,moveY+295,37,14);//buttons
  fill(random(1,25), 194, random(1,255));
  rect(moveX+186,moveY+295,14,14);
  fill(247, 104, 202);
  rect(moveX+206,moveY+295,14,14);
  fill(87,57,57);
  rect(moveX+111,moveY+243,300,14);//helmet opening

  
  //left arm
  fill(29,25,21);
  rect(moveX+346,moveY+314,36,98);//arm opening shading
  fill(153, 142, 142);
  rect(moveX+346,moveY+336,146,12);//top of upper arm
  fill(153, 142, 142);
  rect(moveX+346,moveY+357,146,12);//bottom of upper arm
  fill(153, 142, 142);
  rect(moveX+478,moveY+357,24,142);//lower arm
  fill(209, 201, 201);
  ellipse(moveX+491,moveY+351,49,49);//elbow joint
  fill(124, 111, 111);
  ellipse(moveX+491,moveY+351,29,29);//elbow joint screw
  fill(209, 201, 201);
  ellipse(moveX+491,moveY+494,56,56);//hand
  fill(128, 95, 199);
  ellipse(moveX+491,moveY+507,49,49);//hand subtract
  
  //the bouncing heart
  float moveHeart = offset + sin(angle + -0.6) * scalar;
  
  fill(222, 111, 111);
  ellipse(moveX+211,moveHeart+397,28,28);//heart
  ellipse(moveX+228,moveHeart+397,28,28);
  triangle(moveX+240,moveHeart+404,moveX+220,moveHeart+427,moveX+199,moveHeart+404);
  angle += speed;//heart movement activate

  
moveX = moveX + moveIt;//robot movement
  
  if(moveX+530>width || moveX<12){
   moveIt = - moveIt; 
  }
  
}