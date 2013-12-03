//Because this timer is triggered when the difference
//is at least 2000 instead of exactly 200, it won't
//suffer from skipped numbers like modulo will

int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
color c = color(0);

void setup() {
  background(255);
  size(500, 500);
  noStroke();
}

void draw() {
  background(c);
  println("currentTime: " + currentTime + "\noldTime: " + oldTime + "\ndifference: " + timeChange);
  currentTime = millis();           //Update currentTime with the current value of millis()
  timeChange = currentTime - oldTime;  //set timeChange to the difference between currentTime and oldTime
  if (timeChange >= 2000) {            //if the difference between the two times is at least 2000...
    c= color(random(255), random(255), random(255),100);  //...change the background color...
    oldTime = currentTime;                            //...and update oldTime with the value of currentTime so the timeChange value is reset to 0
  }
}
