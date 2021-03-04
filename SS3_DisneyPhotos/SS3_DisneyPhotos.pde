// Shanice Smith, Title: Disney Princesses Photo Sketch
// Images of Disney Princesses will move across and further down the sketch window

String[] princesses = {"mulan.png", "tiana.jpg", "jasmine.jpg", "belle.jpg"};
PImage princess;

int imgX = 0;
int imgY = 0;
int i = 0;

void setup () {
  background(255);
  size(600, 600);
  princess = loadImage(princesses[i]);
}

void draw () {  
  image(princess, imgX, imgY, 100, 100);
  
  if (imgX <= width) {
    imgX++;
  } else {
    imgX--;
    imgY += 100;
    i++;
  }
  
}
