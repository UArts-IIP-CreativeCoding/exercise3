PImage rFish;
PImage bFish;


float x, y, rotation;

void setup() {
  size (1200, 900);
  background (0, 70, 120);

  //---------images--------
  rFish = loadImage("RedFish.png");
  bFish = loadImage("BlueFish.png");
  rFish.resize(56, 56);
  bFish.resize(75, 75);
  //-----------------------

  x = width/2.0;
  y = height/2.0;
  rotation = 0;
}

void draw() {

  keypresses();
  reset();
}

void keypresses() {

  if (keyPressed) {
    if (key == 'r' || key == 'R') {

      pushMatrix();
      translate(x, y);
      rotate(rotation + .3);
      image(rFish, 0, 0);
      image(rFish, 256, 256);
      image(rFish, 400, 400);
      image(rFish, 100, 100);
      popMatrix();

      if ( mousePressed)
        x += 0;
      rotation += .1;
      if (x > width) {
        x=0;
      }
      //if ( keyPressed)
    }
  }

  if (keyPressed) {
    if (key == 'b' || key == 'B') {

      pushMatrix();
      translate(x, y);
      rotate(rotation + .3);
      image(bFish, 50, 50);
      image(bFish, width/6, width/6);
      image(bFish, 300, 300);
      popMatrix();

      if ( mousePressed)
        x += 10;
      rotation += -.1;
      if (x > width) {
        x=0;
      }
      //if ( keyPressed)
    }
  }
}

void reset() {
  if (keyPressed == true) {
    if (key == 'x' || key == 'X') {
      background(0, 70, 120);
    }
  }
}

void fishincrease(){
  if (mousePressed == true){
  x = 10;}

}

