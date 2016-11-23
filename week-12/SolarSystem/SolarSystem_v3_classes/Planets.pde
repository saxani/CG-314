class Planets {
  float ellipseX = 0;
  float ellipseY = 0;
  float planetMove=0;
  float planetRotate;
  float originalRotate;
  float planetSpeed;
  float originalSpeed;
  int planetOrbit;

  Planets (int tempOrbit, float tempRotate, float tempSpeed) {
    planetOrbit = tempOrbit;
    planetRotate = tempRotate;
    planetSpeed = tempSpeed;
    originalRotate = tempRotate;
    originalSpeed = tempSpeed;
  }

  void drawPlanet () {
    ellipseX = planetOrbit*sin(planetMove)+width*0.5;
    ellipseY = planetOrbit*cos(planetMove)+height*0.5;
  }

  void update () {
    planetMove=planetMove+planetSpeed;
  }

  void isMouseOverCircle () {
    if (mouseOverCircle (ellipseX, ellipseY)) {
      planetSpeed = 0;
      planetRotate =0;
    } else {
      planetSpeed = originalSpeed;
      planetRotate = originalRotate;
    }
  }

  boolean mouseOverCircle(float x, float y) {
    return (dist(mouseX, mouseY, x, y) < 50);
  }
}