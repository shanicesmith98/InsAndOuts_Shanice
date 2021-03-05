// Shanice Smith, Title: Disney Princesses Photo Sketch
// Images of Disney Princesses will pop up in the sketch window, the name attached to mouse coordinates
// Images are chosen from the array in random, and location of image is chosen in random
// The text will expand and loop according to the mouse coordinates

String[] princesses = {"mulan.png", "tiana.jpg", "jasmine.jpg", "belle.jpg"};
String[] names = {"Mulan", "Tiana", "Jasmine", "Belle"};
String name;
PImage princess;

int i = (int)random(0, 4);
int locX = (int)random(0, 500);
int locY = (int)random(0, 500);

void setup () {
  size(500, 500);
  princess = loadImage(princesses[i]);
  name = names[i];
  
  println(i);
}

void draw () {  
  background(255);
  // image info
  image(princess, locX, locY, 150, 150);
  
  // text info
  fill(0);
  textSize(12);
  text(name, 20, 20, mouseX - 50, mouseY - 20);
  
  // func call
  magicNum();
}

void magicNum () {
  if (locX == width/2 || locY == height/2) {
    name = name + " is in the magic number!" ;
  }
  else {
    name = name + " is not in the magic number";
  }
}
