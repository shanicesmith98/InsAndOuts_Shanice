// Shanice Smith - Blank Face
int eyesHeight = 20;
int eyesWidth = 20;

void setup() {
  size(1080, 720);
  background(0);
}


void draw(){
  // top center
  
  fill(102, 74, 27);
  noStroke();
  ellipse(540, 200, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(255, 255, 255);
  strokeWeight(4);
  ellipse(505, 170, eyesWidth, eyesHeight); // L eye
  
  fill(0, 0, 0);
  stroke(255, 255, 255);
  strokeWeight(4);
  ellipse(570, 170, 20, eyesHeight); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(535, 200, 520, 230, 550, 230); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(540, 130, 120, 80, PI, TWO_PI); // hat
  
  // top left
  
  fill(102, 74, 27);
  noStroke();
  ellipse(240, 200, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(247, 27, 27);
  strokeWeight(4);
  ellipse(205, 170, 20, 20); // L eye
  
  fill(0, 0, 0);
  stroke(247, 27, 27);
  strokeWeight(4);
  ellipse(270, 170, 20, 20); // R eye
  
  fill(0, 0, 0);
  noStroke();
  triangle(235, 200, 220, 230, 250, 230); // nose
  
  fill(245, 95, 195);
  noStroke();
  arc(240, 130, 120, 80, PI, TWO_PI); // hat
  
  // top right
  
  fill(102, 74, 27);
  noStroke();
  ellipse(840, 200, 160, 220); // head
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(805, 170, 20, 20); // L eye
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(870, 170, 20, 20); // R eye
  
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
  ellipse(805, 470, eyesWidth, 20); // L eye
  
  fill(0, 0, 0);
  stroke(94, 255, 41);
  strokeWeight(4);
  ellipse(870, 470, eyesWidth, 20); // R eye
  
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
