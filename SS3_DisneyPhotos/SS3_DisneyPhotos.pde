String[] princesses = {"mulan.png", "tiana.jpg", "jasmine.jpg", "belle.jpg"};

int imgX = 0;
int imgY = height/2;
int i = 0;
princess = loadImage(princesses[i]);

int size = 600;

void setup () {
  background(size, size);
}

void draw () {  
  image(princess, imgX, imgY);
  
  if (imgX <= size) {
    imgX++;
  } else {
    imgX--;
  }
  
  //photoChange();
}

void photoChange () {
  if () {
    
    }
}
