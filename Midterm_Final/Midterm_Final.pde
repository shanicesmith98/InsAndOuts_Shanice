// Shanice Smith, Drawing Game
// Instructions: Draw the given Animal or Object using your mouse within the given time

String state = "start";
String[] drawIdeas = {"Bird", "Dog", "Vase", "Bird", "Flowers"};
int i = (int)random(0, 5);
String randIdea;

int timer = 0;
int currentTime = 0;
int timeAdded = 10;
int limit = 10;

// mouse coords tracking
int[] pointX = new int[50];
int[] pointY = new int[50];

int counter = 0;

// for random color generator
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
    startState();
  }
  
  if (state == "play") {
    playState();
  }
  
  if (state == "game over") {
    gameOverState();
  }
  
  if (state == "finish") {
    finishState();
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

void startState () {
    randIdea = drawIdeas[i];
    
    background(191, 141, 247);
    fill(255);
    text("Drawing Game", width/2, height/2 - 100);
    text("Draw the challenge object using your mouse.", 120, 200, width/2, height/2);
    text("Press 2 to start the game.", width/2, height/2 + 200);
}

void playState () {
    timer = millis();
    currentTime = (int)Math.round(timer * 0.0005);
    if (currentTime == limit) {
      state = "game over";
    }
    
    background(255);
    
    stroke(R, G, B);
    strokeWeight(10);
    
    // from array demo
    pointX[counter] = mouseX;
    pointY[counter] = mouseY;
    counter++;
  
    for(int i=0; i<pointX.length-1; i++){
      if(i+1 != counter){
        line(pointX[i], pointY[i], pointX[i+1], pointY[i+1]);
      }
    }
  
    if (counter != pointX.length){
      line(pointX[0], pointY[0], pointX[pointX.length-1], pointY[pointX.length-1]);
    }
    
    if (counter > pointX.length-1){
      counter = 0;
    }
  
    circleParty();
    fill(0);
    text("Time Played: " + currentTime, width/2, 30);
    text("Challenge: " + randIdea, width/2, 60);
}

void gameOverState () {
    background(141, 201, 247);
    fill(255);
    text("Oh no, time ran out!", width/2, height/2);
    text("Did you finish the challenge?", width/2, height/2 + 30);
    text("Press 1 to try again.", width/2, height/2 + 200);
    
    limit = limit + 10;
}

void finishState () {
    background(141, 201, 247);
    fill(255);
    text("You finished in the time alloted!", width/2, height/2);
    text("Congrats!!!!", width/2, height/2 + 30);
    text("Press 1 to try again.", width/2, height/2 + 200);
    

}

void keyPressed () {
  if (key == '2') {
    state = "play";
  }
  if (key == '1') {
    state = "start";
  }
  if (key == '3') {
    state = "finish";
  }
}
