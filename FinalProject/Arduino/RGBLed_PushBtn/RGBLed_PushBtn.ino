// Controls Inputs of push button and outputs of the RGB LED

const int PUSHBUTTON_PIN = 2;
const int RED_PIN = 9;
const int GREEN_PIN = 10;
const int BLUE_PIN = 11;

int buttonCount = 0;

int inByte = 0;

void setup() {
  Serial.begin(9600);
  pinMode(PUSHBUTTON_PIN, INPUT);

  pinMode(RED_PIN, OUTPUT);
  pinMode(GREEN_PIN, OUTPUT);
  pinMode(BLUE_PIN, OUTPUT);
}

void loop() {
  int buttonState;
  buttonState = digitalRead(PUSHBUTTON_PIN);
  
  if (Serial.available() > 0) {
    buttonCount = Serial.read();

    Serial.write(buttonCount);
  }
  if (buttonState == LOW) {
    buttonCount++;
    delay(150);
  }
  
  else if (buttonCount == LOW) {
      digitalWrite(RED_PIN, LOW);
      digitalWrite(GREEN_PIN, LOW);
      digitalWrite(BLUE_PIN, LOW);
    }
   else if (buttonCount == 1) {
      digitalWrite(RED_PIN, HIGH);
      digitalWrite(GREEN_PIN, LOW);
      digitalWrite(BLUE_PIN, LOW);
    }
   else if (buttonCount == 2) {
      digitalWrite(RED_PIN, LOW);
      digitalWrite(GREEN_PIN, HIGH);
      digitalWrite(BLUE_PIN, LOW);
    }
    else if (buttonCount == 3) {
      digitalWrite(RED_PIN, LOW);
      digitalWrite(GREEN_PIN, LOW);
      digitalWrite(BLUE_PIN, HIGH);
    }
  else {
    buttonCount = 0;
  }
}
