// Shanice Smith, Drawing Game
// Instructions: Draw the given random Animal or Object within the given time

// TODOS:
// 1. game funtionality - fix background when drawing with mouse
// 2. fix timer (float -> int + resetting to 0 at restart)
// 3. text styling

String state = "start";
String[] drawIdeas = {"Bird", "Dog", "Vase", "Bird", "Flowers"};
int i = (int)random(0, 5);
String randIdea;

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
    randIdea = drawIdeas[i];
    
    background(191, 141, 247);
    fill(255);
    text("Drawing Game", width/2, height/2 - 100);
    text("Draw the challenge object using your mouse.", 120, 200, width/2, height/2);
    text("Press 2 to start the game.", width/2, height/2 + 200);
  }
  
  if (state == "play") {
    timer = millis();
    currentTime = Math.round(timer * 0.001);
    
    background(255);
    fill(0);
    text("Time Played: " + currentTime, width/2, 30);
    text("Challenge: " + randIdea, width/2, 60);
    
    circleParty();
    
    stroke(R, G, B);
    strokeWeight(15);
    line(mouseX - 10, mouseY, mouseX - 10, mouseY);
    
    if (currentTime == 10.0) {
      state = "game over";
    }
  }
  
  if (state == "game over") {
    background(141, 201, 247);
    fill(255);
    text("Oh no! You ran out of time.", width/2, height/2);
    text("You played for: " + currentTime + " seconds.", width/2, height/2 + 30);
    text("Press 1 to try again.", width/2, height/2 + 200);
    
  }
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
  if (key == '1') {
    state = "start";
  }
}
