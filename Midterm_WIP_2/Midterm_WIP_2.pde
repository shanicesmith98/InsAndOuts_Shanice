// Shanice Smith, Circles Game
// Instructions: Stay within the bounds of the sketch as long as possible you draw the given Animal or Object

// TODOS:
// 1. game funtionality - stay within bounds
// 2. add timer
// 3. add sound
// 4. add game over state when out of bounds
// 5. styling

String state = "start";
String[] drawIdeas = {"Bird", "Dog", "Vase", "Bird"};

int timer = 0;
float currentTime = 0;

int R = (int)random(130, 255);
int G = (int)random(130, 255);
int B = (int)random(130, 255);

void setup () {
  size(500, 500);
  textAlign(CENTER);
  textSize(24);
}

void draw () {
  if (state == "start") {
    timer = 0;
    currentTime = 0;
    
    background(191, 141, 247);
    fill(255);
    text("Circles Game", width/2, height/2);
    text("See how long you can stay within the bounds using your mouse.", 120, 260, width/2, height/2 + 30);
    text("Press 2 to start the game.", width/2, height/2 + 200);
  }
  
  if (state == "play") {
    timer = millis();
    currentTime = Math.round(timer * 0.001);
    
    background(255);
    fill(0);
    text("Time Played: " + currentTime, width/2, 30);
    
    // func call
    circleParty();
    
    // line info
    stroke(R, G, B);
    strokeWeight(15);
    line(mouseX - 10, mouseY, mouseX - 10, mouseY);
  }
  
  if (state == "game over") {
    background(141, 201, 247);
    fill(255);
    text("Oh no! You stepped out of bounds.", width/2, height/2);
    text("You played for: " + currentTime + " seconds.", width/2, height/2 + 30);
    text("Press 1 to try again.", width/2, height/2 + 200);
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
