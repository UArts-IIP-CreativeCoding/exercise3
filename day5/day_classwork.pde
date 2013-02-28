PImage ninja ;
PImage panda;
float x;
float y;
int a;

void setup(){
  size(620, 400);

  for(int i=0; i < ninja.width; i++){
    resize(620, 400);
    
  }



  noFill();
//background([0]);
//{
image(ninja, 0, 0, 620, 400);
//resize(620, 400);
// }
ninja = loadImage("ninja.png");
panda = loadImage("panda.png");
}

void draw() {
  // background
  image(panda, 0, 0);
  // right row end area
  if (mousePressed) {
    for (int ninjaCount = 0; ninjaCount < 20; ninjaCount ++) {
      //for (int ninjaCount =0; ninjaCount > -20; ninjaCount --) {
      }



      //loadImage(ninja, 0, 0);
    }
  

    /*
 image(ninja, 410, 110);
     image(ninja, 310, 210);
     image(ninja, 210, 310);
     */
    // left row

    //  image(ninja, -300, height/2);
    // image(ninja, -210, 200);
    //image(ninja, -310, 110);
  }

