int score = 0;
int scoreSize = 30;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 1;
Raindrops[] r = new Raindrops[150];
Catcher c;

void setup() {
  size(500, 500);
  for (int i = 0; i< r. length; i++) {
    r[i] = new Raindrops();
  }
  c = new Catcher();
  textSize(scoreSize);
}

void draw() {
  background(0,0,200);
  for (int i = 0; i < index; i ++) {
    r[i].display();
    r[i].move();
    c.catchDrop(r[i]);
  }
  currentTime = millis();
  timeChange = currentTime - oldTime;
  if (timeChange >= 2000) {
    if (index < r.length) {
      index++;
      oldTime = currentTime;
    }
  } 
  c.displaycatch();
  text(score,height-scoreSize*1.25,width-scoreSize*1.25); //displays score on screen
}

