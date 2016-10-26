// this sketch shows how to use an array to hold a bunch of objects
// Danny Rozin ITP

Ball[] myBalls= new Ball[0];                              // new array of type Ball

void setup() {
  size (500, 500);
}

void draw() {
  background(0); 
  for (int i = 0; i < myBalls.length;i++) {              // using .length to get the number of items in the array
    myBalls[i].drawBall();                                // using the square brackets [] to get an item from the array
    myBalls[i].randomizePosition();
  }
}

void mousePressed() {
  Ball temp= new Ball(mouseX, mouseY);
  myBalls =(Ball[])append( myBalls, temp);               // using append() to ad an item to aray
}                                                        // notice that you mention the array twice, once as the array to add too
                                                          // and a second time as the result of the operation
class Ball {
  float posX, posY;
  Ball(int x, int y) {
    posX=x;
    posY=y;
  }

  void drawBall() {
    fill(255);
    stroke(255);
    ellipse(posX, posY, 10, 10);   
    for (int i = 0; i < myBalls.length;i++) {
      line (posX, posY, myBalls[i].posX, myBalls[i].posY);
    }
  }
  void randomizePosition(){
    posX+= random(-1,1);
    posY+= random(-1,1);
  }
    
}