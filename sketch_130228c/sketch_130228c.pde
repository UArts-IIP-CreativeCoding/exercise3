// create an empty array for 100 MovingCircle objects
PImage Sloth0;
PImage Sloth1;
PImage Sloth2;
PImage Sloth3;
PImage Sloth4;
PImage Sloth5;
PImage Sloth6;
PImage Sloth7;
PImage Sloth8;
PImage Sloth9;
PImage Sloth10;
PImage Sloth11;

float state = 0;

MovingCircle[] myCircleArray = new MovingCircle[10];

void setup() {
  size(1024, 768);
  smooth();

  Sloth0 =loadImage("44208195253.jpeg");
  Sloth1 =loadImage("44229058174.jpeg");
  Sloth2 =loadImage("44232126447.jpeg");
  Sloth3 =loadImage("44239451299.jpeg");
  Sloth4 =loadImage("tumblr_miwn8zs61w1rlup5oo1_500.jpg");
  Sloth5 =loadImage("tumblr_mixm2dUomB1rrmgzwo1_500.jpg");
  Sloth6 =loadImage("tumblr_mixx7xS4Tv1rypsrno1_500.jpg");
  Sloth7 =loadImage("tumblr_miy3y4UE5L1qjyd71o1_400.jpg");
  Sloth8 =loadImage("tumblr_miy7iss1NC1re4caco1_r1_500.jpg");
  Sloth9 =loadImage("tumblr_miy045o33T1r7l9lyo1_500.jpg");
  Sloth10 =loadImage("WSjRPDHGvE.jpeg");
  Sloth11 =loadImage("WSZTsxmA_S.jpeg");


  // and actually create the objects and populate the
  // array with them
  for (int i=0; i<myCircleArray.length; i++) {
    myCircleArray[i] = new MovingCircle(200, 200, 10);
  }
}

void draw() {

  background(0);

  // iterate through every moving circle
  for (int i=0; i<myCircleArray.length; i++) {

    myCircleArray[i].update();
    myCircleArray[i].checkCollisions();
    myCircleArray[i].drawCircle();
  }
  
  
  if (mousePressed) {
      state = state + 1;
    }
    
    if (state < 11) {
      state= 0;
    }  
}




class MovingCircle {

  float x;
  float y;
  float xSpeed;
  float ySpeed;

  float circleSize;

  MovingCircle(float xpos, float ypos, float csize) {
    x = xpos;
    y = ypos;
    circleSize = csize;

    xSpeed = random(-10, 10);
    ySpeed = random(-10, 10);
  }

  void update() {
    x += xSpeed;
    y += ySpeed;
  }

  void checkCollisions() {

    float r = circleSize/2;

    if ( (x<r) || (x>width-r)) {
      xSpeed = -xSpeed;
    } 

    if ( (y<r) || (y>height-r)) {
      ySpeed = -ySpeed;
    }
  }

  void drawCircle() {

    

   /* if (mousePressed) {
      state++;
    }
    
    if (state < 11) {
      state= 0;
    }  */

    if (state == 0) {
      image(Sloth0, x, y);
    }
    if (state == 1) {
      image(Sloth1, x, y);
    }
    if (state == 2) {
      image(Sloth2, x, y);
    }
    if (state == 3) {
      image(Sloth3, x, y);
    }
    if (state == 4) {
      image(Sloth4, x, y);
    }
    if (state == 5) {
      image(Sloth5, x, y);
    }
    if (state == 6) {
      image(Sloth6, x, y);
    }
    if (state == 7) {
      image(Sloth7, x, y);
    }
    if (state == 8) {
      image(Sloth8, x, y);
    }
    if (state == 9) {
      image(Sloth9, x, y);
    }
    if (state == 10) {
      image(Sloth10, x, y);
    }
    if (state == 11) {
      image(Sloth11, x, y);
    }
  }


  /*fill(255);
   ellipse(x, y, circleSize, circleSize);*/


  /*   if(keyPressed=true and ){
   image(Sloth0, x, y);
   }
   
   image(Sloth0, x, y);*/
}

