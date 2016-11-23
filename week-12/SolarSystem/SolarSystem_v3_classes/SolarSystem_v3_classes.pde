Planets [] aPlanet = new Planets [9];
PShape [] Planet = new PShape [9];
PImage [] PlanetTexture = new PImage [9];
int [] starX = new int [200];
int [] starY = new int [200];
int [] starZ = new int [200];

float cameraZ=-19390;
float cameraX = mouseX;

void setup () {
  size(800, 600, P3D);

  background (0);
  noStroke ();
  sphereDetail(40);

  Planet[8] = createShape (SPHERE, 60);
  PlanetTexture[8] = loadImage ("sun.png");
  Planet[8].setTexture (PlanetTexture[8]);
  Planet[8].rotateX (1*HALF_PI);
  aPlanet [8] = new Planets (0, 0.004, 0);

  Planet[0] = createShape (SPHERE, 8);
  PlanetTexture[0] = loadImage ("mercury.png");
  Planet[0].setTexture (PlanetTexture[0]);
  Planet[0].rotateX (1*HALF_PI);
  aPlanet [0] = new Planets (80, 0.015, 0.03);

  Planet[2] = createShape (SPHERE, 11);
  PlanetTexture[2] = loadImage ("venus.png");
  Planet[2].setTexture (PlanetTexture[2]);
  Planet[2].rotateX (1*HALF_PI);
  aPlanet [2] = new Planets (120, 0.015, 0.021);

  Planet[3] = createShape (SPHERE, 12);
  PlanetTexture[3] = loadImage ("earth.png");
  Planet[3].setTexture (PlanetTexture[3]);
  Planet[3].rotateX (1*HALF_PI);
  aPlanet [3] = new Planets (180, 0.015, 0.01);

  Planet[1] = createShape (SPHERE, 7);
  PlanetTexture[1] = loadImage ("mars.png");
  Planet[1].setTexture (PlanetTexture[1]);
  Planet[1].rotateX (1*HALF_PI);
  aPlanet [1] = new Planets (230, 0.015, 0.0075);

  Planet[7] = createShape (SPHERE, 25);
  PlanetTexture[7] = loadImage ("jupiter.jpg");
  Planet[7].setTexture (PlanetTexture[7]);
  Planet[7].rotateX (1*HALF_PI);
  aPlanet [7] = new Planets (320, 0.015, 0.002);

  Planet[6] = createShape (SPHERE, 22);
  PlanetTexture[6] = loadImage ("saturn.png");
  Planet[6].setTexture (PlanetTexture[6]);
  Planet[6].rotateX (1*HALF_PI);
  aPlanet [6] = new Planets (450, 0.015, 0.0012);

  Planet[5] = createShape (SPHERE, 18);
  PlanetTexture[5] = loadImage ("uranus.png");
  Planet[5].setTexture (PlanetTexture[5]);
  Planet[5].rotateX (1*HALF_PI);
  aPlanet [5] = new Planets (620, 0.015, 0.0006);

  Planet[4] = createShape (SPHERE, 17);
  PlanetTexture[4] = loadImage ("neptune.png");
  Planet[4].setTexture (PlanetTexture[4]);
  Planet[4].rotateX (1*HALF_PI);
  aPlanet [4] = new Planets (720, 0.015, 0.0003);

  //Stars randomly in the 3D space
  for (int i=0; i<starX.length; i++) {
    starX[i] = int (random (-1500, 1500)); 
    starY[i] = int (random (-1500, 1500)); 
    starZ[i] = int (random (-1500, 1500));
  }
}



void draw () {

  background(0);
  lights ();
  pointLight(255, 255, 255, width*0.5, height*0.5, 0);
  camera (1.3*width+cameraX, 1.17*height, cameraZ-0.7, 0.5*width, 0.5*height, 0, 0.2, -0.3, 1);
  cameraZ += (-390+2*(mouseY - 0.5*height)-cameraZ)*0.1;
  cameraX += (-390+2*(mouseX - 0.5*width)-cameraX)*0.1;

  stroke (255);
  for (int i=0; i<starX.length; i++) {
    point (starX[i], starY[i], starZ[i]);
  }
  noStroke ();


  for (int i = 0; i<aPlanet.length; i++) {
    //pushMatrix ();
    aPlanet[i].drawPlanet();
    Planet[i].rotate(-1*aPlanet[i].planetRotate*HALF_PI, 0, 0, 1);
    shape (Planet[i], aPlanet[i].ellipseX, aPlanet[i].ellipseY);
    aPlanet[i].update ();
    //popMatrix ();
    aPlanet[i].isMouseOverCircle ();
  }
}