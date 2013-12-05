int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
float x = width/2;
float y = height/2;
int d = 50;

void setup() {
  size(500,500);
}

void draw() {
  background(0);
  ellipse(x,y,d,d);
  currentTime = millis();
  timeChange = currentTime - oldTime;
  if (timeChange >= 3000) {
   x = random(width);
   y = random(height);
   oldTime = currentTime;
  }
}
