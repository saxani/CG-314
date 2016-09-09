size(600, 480);
background(4, 10, 69);

//randomized stars
fill(230, 228, 89);
for (int i=0; i<12; i++) {
  float x=random(1, 559);
  float y=random (1, 320);
  float wide=random(15, 70);
  ellipse(x, y, wide, wide);
}


//Ground landscape
fill(9, 43, 1);
beginShape();
curveVertex(0, 350);
curveVertex(0, 350);
curveVertex(20, 346);
curveVertex(44, 360);
curveVertex(60, 364);
curveVertex(86, 351);
curveVertex(240, 343);
curveVertex(276, 327);
curveVertex(300, 321);
curveVertex(325, 343);
curveVertex(350, 308);
curveVertex(408, 295);
curveVertex(453, 310);
curveVertex(478, 306);
curveVertex(493, 299);
curveVertex(518, 314);
curveVertex(550, 296);
curveVertex(600, 288);
curveVertex(600, 288);
curveVertex(600, 480);
curveVertex(0, 480);
curveVertex(0, 350);
endShape();

//bushes
int x=0;
float y=380;
for (int i=0; i<2000; i++) {
  float wide=random(14, 25);
  float bushColor=random (25, 35);
  fill(9, bushColor, 1);
  ellipse(x, y, wide, wide);
  x=x+4;
  float z=random(-2, 2);
  y=y+z;
  if (x>640) {
    y=y+20;
    x=0;
  }
}

x=360;
y=325;
for (int i=0; i<300; i++) {
  float wide=random(14, 25);
  float bushColor=random (25, 35);
  fill(9, bushColor, 1);
  ellipse(x, y, wide, wide);
  x=x+4;
  float z=random(-2, 2);
  y=y+z;
  if (x>640) {
    y=y+20;
    x=360;
  }
}

//Black mountain thing.
fill(0);
beginShape();
curveVertex(270, 480);
curveVertex(270, 480);
curveVertex(277, 460);
curveVertex(265, 436);
curveVertex(245, 420);
curveVertex(238, 410);
curveVertex(242, 400);
curveVertex(255, 390);
curveVertex(241, 397);
curveVertex(238, 399);
curveVertex(231, 402);
curveVertex(232, 381);
curveVertex(210, 330);
curveVertex(190, 310);
curveVertex(178, 293);
curveVertex(182, 284);
curveVertex(183, 275);
curveVertex(176, 284);
curveVertex(169, 312);
curveVertex(180, 330);
curveVertex(163, 312);
curveVertex(169, 277);
curveVertex(166, 287);
curveVertex(160, 297);
curveVertex(155, 250);
curveVertex(152, 236);
curveVertex(173, 225);
curveVertex(150, 231);
curveVertex(146, 190);
curveVertex(141, 185);
curveVertex(138, 204);
curveVertex(133, 180);
curveVertex(131, 135);
curveVertex(123, 115);
curveVertex(119, 103);
curveVertex(126, 60);
curveVertex(127, 45);
curveVertex(123, 32);
curveVertex(116, 29);
curveVertex(119, 20);
curveVertex(119, 28);
curveVertex(116, 38);
curveVertex(115, 47);
curveVertex(108, 90);
curveVertex(114, 119);
curveVertex(118, 130);
curveVertex(119, 140);
curveVertex(115, 157);
curveVertex(110, 148);
curveVertex(103, 183);
curveVertex(100, 183);
curveVertex(94, 151);
curveVertex(90, 179);
curveVertex(94, 209);
curveVertex(99, 227);
curveVertex(84, 287);
curveVertex(92, 334);
curveVertex(92, 360);
curveVertex(70, 390);
curveVertex(73, 435);
curveVertex(104, 468);
curveVertex(107, 480);
curveVertex(107, 480);
endShape();


//church
fill(4, 10, 210);
triangle(340, 290, 346, 380, 334, 380); 
rect (336, 380, 8, 8); 
fill(4, 10, 120);
triangle(342, 385, 355, 402, 329, 402);
rect (329, 402, 26, 22);
quad(329, 402, 329, 424, 317, 427, 317, 405);
quad(317, 405, 317, 427, 295, 424, 295, 402);
triangle(295, 402, 317, 405, 306, 384);
fill(4, 10, 210);
quad(306, 384, 315, 384, 326, 390, 317, 405);
quad(326, 390, 317, 405, 329, 402, 342, 385);
fill(0);
quad(300, 402, 300, 418, 312, 418, 312, 405);
rect(334, 405, 16, 15);


//House 1
fill(43, 21, 0);
rect(340, 440, 35, 25);
triangle(380, 420, 370, 440, 390, 435);
quad(375, 440, 375, 465, 390, 460, 390, 435);
fill(26, 0, 44);
quad(336, 440, 370, 440, 380, 420, 346, 420);
fill(230, 228, 89);
rect(345, 442, 5, 8);
rect(360, 442, 5, 8);
fill(0);
rect(354, 452, 5, 11);

//House 2
fill(26, 0, 44);
quad(365, 470, 372, 443, 418, 443, 411, 470);
fill (107, 95, 73);
rect(368, 470, 46, 15);
triangle(412, 488, 418, 443, 427, 458);
fill(0);
rect(377, 472, 6, 8);
rect(393, 472, 6, 8);


//House 3
fill(26, 0, 44);
quad(408, 477, 415, 458, 457, 458, 450, 477);
fill(0);
rect(408, 477, 42, 15);
triangle(457, 458, 450, 477, 464, 472);
quad (450, 477, 450, 480, 464, 480, 464, 472);