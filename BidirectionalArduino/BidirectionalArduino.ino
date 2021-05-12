const int BUTTON = 2;
const int RED_PIN = 11; 
const int GREEN_PIN = 10; 
const int BLUE_PIN = 9;

int buttonState = LOW;
int lastButtonState = LOW;
int buttonCount = 0;

int inByte = 0;

void setup() {
  Serial.begin(9600);
  while(!Serial) {
    ; //wait for serial port to connect
  }
  
  pinMode(BUTTON, INPUT);
  pinMode(RED_PIN, OUTPUT);
  pinMode(GREEN_PIN, OUTPUT);
  pinMode(BLUE_PIN, OUTPUT);

  establishContact();
}

void loop() {
  buttonState = digitalRead(BUTTON);
  if (buttonState == HIGH && lastButtonState == LOW){
    buttonCount++;  
  }
  else {
  }
  lastButtonState = buttonState;

  if (buttonCount > 255){
    buttonCount = 0;  
  }
  delay(10);

  if (Serial.available() > 0){
    inByte = Serial.read();

    if(inByte == 0) {
      digitalWrite(RED_PIN, HIGH);
      digitalWrite(GREEN_PIN, LOW);
      digitalWrite(BLUE_PIN, LOW);  
    }
    if(inByte == 1) {
      digitalWrite(RED_PIN, LOW);
      digitalWrite(GREEN_PIN, HIGH);
      digitalWrite(BLUE_PIN, LOW);  
    }
    if(inByte == 2) {
      digitalWrite(RED_PIN, LOW);
      digitalWrite(GREEN_PIN, LOW);
      digitalWrite(BLUE_PIN, HIGH);  
    }
    else {}

    Serial.write(buttonCount);
  }
}

void establishContact() {
  while (Serial.available() <= 0){
    Serial.print('A');
    delay(300);  
  } 
}
