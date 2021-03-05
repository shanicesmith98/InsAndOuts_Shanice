// Shanice Smith, Title: Disney Princesses Photo Sketch
// Images of Disney Princesses will move across and further down the sketch window
// Images are chosen from the array in random

String[] princesses = {"mulan.png", "tiana.jpg", "jasmine.jpg", "belle.jpg"};
String[] names = {"Mulan", "Tiana", "Jasmine", "Belle"};
String name;
PImage princess;

int imgX = 0;
int imgY = 0;
int i = (int)random(0, 4);

void setup () {
  size(500, 500);
  princess = loadImage(princesses[i]);
  name = names[i];
  
  println(i);
}

void draw () {  
  background(255);
  // image info
  image(princess, imgX, imgY, 150, 150);
  
  // text info
  fill(0);
  textSize(24);
  text(name, mouseX - 50, mouseY - 20);
  
  // func call
  moveAcross();
}

void moveAcross () {
  if (imgX < width) {
    imgX++;
  } else {
    imgX--;
    imgY+=150;
  }
}
