float height = 5.0;
float width = 4.5;
int R = 201;
int G = 121;
int B = 121;

void setup() {
  size (400, 400);
  background(255);
}

void draw() {
  fill(R, G, B);
  noStroke();
  rect(mouseX - 25, mouseY - 25, height, width);
  
  colorChange();
  
  println("red color: " + R);
  println("green color: " + G);
  println("red color: " + R);
}

void colorChange() {
  if (G == 121) {
    G = G + 1;
  }
  else if (G == 201) {
    R = R - 1;
  }
  else if (R == 121) {
    B = B + 1;
  }
}
