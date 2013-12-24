boolean start;
boolean stop;
int rectX;
int rectY;
int rectWidth = 160;
int rectHeight = 50;
int lives = 3;
int score = 0;
int scoreSize;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 0; /*states which raindrop in the array 
 is being recognized*/

Raindrops[] r = new Raindrops[300];
Catcher c;

void setup() {
  start = false;
  stop = false;
  scoreSize = 30;
  size(500, 500);
  for (int i = 0; i< r. length; i++) { //array of raindrops
    r[i] = new Raindrops();
  }
  c = new Catcher(); //creates a catcher
  textSize(scoreSize);
  rectX = width/2;
  rectY = height/2+75;
}

void draw() { 
  if (start == false && stop == false) {
    background(0);
    fill(0, 0, 255);
    textAlign(CENTER);
    textSize(80);
    text("RAINDROPS", width/2, height/2);
    rectMode(CENTER);
    rect(rectX, rectY, rectWidth, rectHeight);
    fill(0);
    textSize(30);
    text("BEGIN", width/2, height/2+75);
  }
  if (start == true && stop == false) {
    background(0, 0, 200);
    for (int i = 0; i < index; i ++) {
      r[i].display();
      r[i].move();
      c.displaycatch();
      c.catchDrop(r[i]);
      if (r[i].loc.y >= height) {
        lives-=1;
        r[i].loc.set(width*10, -height);
        r[i].vel.set(0, 0);
      }
    }
    fill(255);
    text("Lives:" + lives, 0, height-scoreSize*1.15);
    text(score, width-scoreSize*1.25, height-scoreSize*1.15); //displays score on screen
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
  if (lives <= 0) {
    stop = true;
  }
  if (start == true && stop == true) {
    background(0);
    fill(255, 0, 0);
    textAlign(CENTER);
    textSize(80);
    text("GAME OVER", width/2, height/2);
    rectMode(CENTER);
    rect(rectX, rectY, rectWidth, rectHeight);
    fill(0);
    textSize(30);
    text("TRY AGAIN", width/2, height/2+75);
  }
}

void mousePressed() {
  if (start == true && stop == true && mouseX>rectX-rectWidth/2 && mouseX<rectX+rectWidth/2 && mouseY>rectY-rectHeight/2 && mouseY<rectY+rectHeight/2) {
    lives = 3;
    score = 0;
    stop = false;
  }
  if (start == false && stop == false && mouseX>rectX-rectWidth/2 && mouseX<rectX+rectWidth/2 && mouseY>rectY-rectHeight/2 && mouseY<rectY+rectHeight/2) {
    start = true;
  }
}

