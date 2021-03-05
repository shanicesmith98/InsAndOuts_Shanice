// Shanice Smith, Responsive Pattern of Ellipses
// Instructions: Move your mouse to watch the circles change colors in random
// Click + Drag your mouse or pause to stop the color changes

int R = (int)random(0, 255);
int G = (int)random(0, 255);
int B = (int)random(0, 255);
void setup () {
  size(500, 500);
}

void draw () {
  background(255);
  
  // func call
  circleParty();
  
  // line info
  stroke(R, G, B);
  strokeWeight(15);
  line(mouseX - 10, mouseY, mouseX - 10, mouseY);
}

void mouseMoved () { // changes colors of circles every mouse movement
  R = (int)random(130, 255);
  G = (int)random(130, 255);
  B = (int)random(130, 255);
}

void circleParty () {
  noStroke();
  fill(R, G, B);
  
  for (int i = 25; i < 500; i += 100) {
    for (int j = 25; i < 500; i += 50){
      ellipse(j, i, 50, 50);
    }
  }
  
  for (int i = 475; i > 0; i -= 100) {
    for (int j = 475; i > 0; i -= 50){
      ellipse(j, i, 50, 50);
    }
  }
}

void mouseDragged () {
    fill(R, G, B);
    ellipse(mouseX - 10, mouseY, 5, 5);
}
