const int buttonPin = 2;
const int LED = 13;
const int LED2 = 12;
const int LED3 = 8;
const int LED4 = 10;

int buttonState = 0;

void setup () {
  pinMode(LED, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop () {
  buttonState = digitalRead(buttonPin);
  delay(10);

  if (buttonState == HIGH) {
     digitalWrite(LED1, LOW);
     digitalWrite(LED2, LOW);
     digitalWrite(LED3, LOW);
     digitalWrite(LED4, HIGH);
     delay(1000);

     digitalWrite(LED1, LOW);
     digitalWrite(LED2, HIGH);
     digitalWrite(LED3, HIGH);
     digitalWrite(LED4, LOW);
     delay(1000);

     digitalWrite(LED1, HIGH);
     digitalWrite(LED2, LOW);
     digitalWrite(LED3, LOW);
     digitalWrite(LED4, LOW);
     delay(1000);

     digitalWrite(LED1, HIGH);
     digitalWrite(LED2, LOW);
     digitalWrite(LED3, LOW);
     digitalWrite(LED4, HIGH);
     delay(1000);
    
     digitalWrite(LED1, LOW);
     digitalWrite(LED2, HIGH);
     digitalWrite(LED3, HIGH);
     digitalWrite(LED4, LOW);
     delay(1000);
    
     digitalWrite(LED1, HIGH);
     digitalWrite(LED2, LOW);
     digitalWrite(LED3, LOW);
     digitalWrite(LED4, HIGH);
     delay(1000);
    
     digitalWrite(LED1, LOW);
     digitalWrite(LED2, LOW);
     digitalWrite(LED3, HIGH);
     digitalWrite(LED4, LOW);
     delay(1000);
    
     digitalWrite(LED1, LOW);
     digitalWrite(LED2, HIGH);
     digitalWrite(LED3, LOW);
     digitalWrite(LED4, LOW);
     delay(1000);
  }
  else {
    digitalWrite(LED, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, LOW);
   
  }
  
}
