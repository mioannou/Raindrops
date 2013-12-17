int lives = 3;
int score = 0;
int scoreSize = 30;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 0; /*states which raindrop in the array 
 is being recognized*/

Raindrops[] r = new Raindrops[300];
Catcher c;

void setup() {
  size(500, 500);
  for (int i = 0; i< r. length; i++) { //array of raindrops
    r[i] = new Raindrops();
  }
  c = new Catcher(); //creates a catcher
  textSize(scoreSize);
}

void draw() { 
  background(0, 0, 200);
  for (int i = 0; i < index; i ++) {
    r[i].display();
    r[i].move();
    c.catchDrop(r[i]);
    if(r[i].loc.y >= height) {
    lives-=1;
    r[i].loc.set(width*10,-height);
    r[i].vel.set(0,0);
  }
  }
  currentTime = millis();
  timeChange = currentTime - oldTime; 
  if (timeChange >= 2000) { /*creates timer for drops to fall, 
   every two seconds a new one falls*/
    if (index < r.length) {
      index++;
      oldTime = currentTime;
    }
  } 
  c.displaycatch();
  text(score, width-scoreSize*1.25, height-scoreSize*1.15); //displays score on screen
  text("Lives:" + lives, 0, height-scoreSize*1.15);
  if(lives <= 0){
    background(0);
    fill(255,0,0);
    textAlign(CENTER);
    textSize(80);
    text("GAME OVER",width/2,height/2);
  }

}


