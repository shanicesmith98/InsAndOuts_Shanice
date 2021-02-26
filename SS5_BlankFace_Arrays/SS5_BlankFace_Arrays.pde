// Shanice Smith - Blank Face
// Click the mouse on the screen to vary the size of the eyes

int eyesHeight = 21;
int eyesWidth = 21;
int hatR = (int)random(1, 255);
int hatG = (int)random(1, 255);
int hatB = (int)random(1, 255);

void setup() {
  size(1080, 720);
  background(0);
}

void draw(){
  // top center 
  drawHead(102, 74, 27, 540, 200, 160, 220);
  drawEyes(0, 255, 255, 255, 4, 505, 570, 170, eyesWidth, eyesHeight);
  drawHat(hatR, hatG, hatB, 540, 130, 120, 80, PI, TWO_PI);
  drawNose(0, 535, 200, 520, 230, 550, 230);
  
  // top left
  drawHead(102, 74, 27, 240, 200, 160, 220);
  drawEyes(0, 247, 27, 27, 4, 205, 270, 170, eyesWidth, eyesHeight);
  drawHat(hatR, hatG, hatB, 240, 130, 120, 80, PI, TWO_PI);
  drawNose(0, 235, 200, 220, 230, 250, 230);
  
  // top right
  
  fill(102, 74, 27);
  noStroke();
  ellipse(840, 200, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(805, 170, eyesWidth, eyesHeight); // L eye
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(870, 170, eyesWidth, eyesHeight); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(835, 200, 820, 230, 850, 230); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(840, 130, 120, 80, PI, TWO_PI); // hat
  
  // bottom right
  
  fill(102, 74, 27);
  noStroke();
  ellipse(840, 500, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(805, 470, eyesWidth, eyesHeight); // L eye
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(870, 470, eyesWidth, eyesHeight); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(835, 500, 820, 530, 850, 530); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(840, 430, 120, 80, PI, TWO_PI); // hat
  
  // bottom left
  
  fill(102, 74, 27);
  noStroke();
  ellipse(240, 200, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(247, 27, 27);
  strokeWeight(4);
  ellipse(205, 170, eyesWidth, eyesHeight); // L eye
  
  fill(0, 0, 0);
  stroke(247, 27, 27);
  strokeWeight(4);
  ellipse(270, 170, eyesWidth, eyesHeight); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(235, 200, 220, 230, 250, 230); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(240, 130, 120, 80, PI, TWO_PI); // hat
  
  // bottom left
  
  fill(102, 74, 27);
  noStroke();
  ellipse(240, 500, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(247, 27, 27);
  strokeWeight(4);
  ellipse(205, 470, eyesWidth, eyesHeight); // L eye
  
  fill(0, 0, 0);
  stroke(247, 27, 27);
  strokeWeight(4);
  ellipse(270, 470, eyesWidth, eyesHeight); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(235, 500, 220, 530, 250, 530); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(240, 430, 120, 80, PI, TWO_PI); // hat
  
  // bottom center
  
  fill(102, 74, 27);
  noStroke();
  ellipse(540, 500, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(255, 255, 255);
  strokeWeight(4);
  ellipse(505, 470, eyesWidth, eyesHeight); // L eye
  
  fill(0, 0, 0);
  stroke(255, 255, 255);
  strokeWeight(4);
  ellipse(570, 470, eyesWidth, eyesHeight); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(535, 500, 520, 530, 550, 530); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(540, 430, 120, 80, PI, TWO_PI); // hat
}

void mousePressed() {
  int rand = (int)random(1, 5);
  
  if (eyesHeight < 45 && eyesWidth < 45) {
    eyesHeight = eyesHeight + 3;
    eyesWidth = eyesWidth + 3;
  }
  else if (eyesHeight >= 45 && eyesWidth >= 45) {
    eyesHeight = eyesHeight - rand;
    eyesWidth = eyesWidth - rand;
  }
}

void drawHead(int r, int g, int b, int x, int y, int w, int h) {
  fill(r, g, b);
  noStroke();
  ellipse(x, y, w, h);
}

void drawEyes(int fill_color, int str_color1, int str_color2, int str_color3, int str_weight, int x1, int x2, int y, int eyesWidth, int eyesHeight) {
  fill(fill_color);
  stroke(str_color1, str_color2, str_color3);
  strokeWeight(str_weight);
  ellipse(x1, y, eyesWidth, eyesHeight); // L eye
  
  fill(fill_color);
  stroke(str_color1, str_color2, str_color3);
  strokeWeight(str_weight);
  ellipse(x2, y, eyesWidth, eyesHeight); // R eye
}

void drawHat(int r, int g, int b, int x, int y, int hatWidth, int hatHeight, float start, float stop) {
  fill(r, g, b);
  noStroke();
  arc(x, y, hatWidth, hatHeight, start, stop); // hat
}

void drawNose(int fill_color, int x1, int y1, int x2, int y2, int x3, int y3) {
  fill(fill_color);
  noStroke();
  triangle(x1, y1, x2, y2, x3, y3); // nose
}
