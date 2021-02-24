// Shanice & Arash - Flag Client Meeting
// Click on the screen to spawn a randomly colored flag

void setup () {
  size(500, 500);
}

void draw () {
  background(255);
  
  int r = int(random(1, 255));
  int g = int(random(1, 255));
  int b = int(random(1, 255));
  int x = int(random(1, 250));
  int y = int(random(1, 250));
  
  flag(r, g, b, x, y, 150, 100);
  noLoop();
}

void flag (int r, int g, int b, int x, int y, int w, int h) {
  fill(r, g, b);
  rect(x, y, w, h);
  
  line(x, y, x, y * 2.5);
}

void mousePressed () {
  loop();
}
