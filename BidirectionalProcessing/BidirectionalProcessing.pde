import processing.serial.*;

Serial myPort;

boolean firstContact = false;
int state = 0;
int lastByte = -1;
color bgcolor = color(0, 0, 0);

void setup(){
  size(500, 500);
  
  printArray(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
}

void draw(){
  background(bgcolor);
  
  if (myPort.available() > 0){
    int inByte = myPort.read();
    
    if(firstContact == false){
      if(inByte == 'A'){
        myPort.clear();
        firstContact = true;
        myPort.write(state);
      }
    }
    else {
      if(lastByte != inByte){
        lastByte = inByte;
        state++;
      }
      if(state >2){
        state = 0;
      }
    }
    myPort.write(state);
  }
  
  if(state == 0){
    bgcolor = color(0,0,0);
  }
  else if(state == 1){
    bgcolor = color(0,0,255);
  }
  else if(state == 2){
    bgcolor = color(0,255,0);
  }
}
