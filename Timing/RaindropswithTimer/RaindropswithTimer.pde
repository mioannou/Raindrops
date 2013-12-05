int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 1;
Raindrops[] r = new Raindrops[5];

void setup() {
  size(500,500);
  for(int i = 0; i < r.length; i++) {
    r[i] = new Raindrops();
  }
}

void draw() {
  background(0);
  for(int i = 0; i <index; i++) {
    r[i].display();
    r[i].move();
  }
  currentTime = millis();
  timeChange = currentTime - oldTime;
  if (timeChange >= 2000) {
    if (index < r.length) {
      index++;
      oldTime = currentTime;
    }
  }
}
  
