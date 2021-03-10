// Shanice Smith, Circles Game
// Instructions: Stay within the bounds of the sketch as you draw the given Animal or Object

String state = "start";

int R = (int)random(130, 255);
int G = (int)random(130, 255);
int B = (int)random(130, 255);

void setup () {
  size(500, 500);
}

void draw () {
  if (state == "start") {
    background(191, 141, 247);
  }
  
  if (state == "play") {
    background(255);
    
    // func call
    circleParty();
    
    // line info
    stroke(R, G, B);
    strokeWeight(15);
    line(mouseX - 10, mouseY, mouseX - 10, mouseY);
  }
  
  if (state == "game over") {
    background(141, 201, 247);
  }
  

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
    
    if (mouseX > 475 || mouseX < 25) {
      R = (int)random(130, 255);
      G = (int)random(130, 255);
      B = (int)random(130, 255);
    }
}

void keyPressed () {
  if (key == '2') {
    state = "play";
  }
  if (key == '3') {
    state = "game over";
  }
  if (key == '1') {
    state = "start";
  }
}
