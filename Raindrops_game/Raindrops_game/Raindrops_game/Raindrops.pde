class Raindrops {
  //variables establishing, size, speed, location, and look of drops
  PVector loc;
  PVector vel;
  int d;
  PImage img1;

  Raindrops() {
    //giving values to variables 
    img1 = loadImage("Raindrop.png"); 
    loc = new PVector(random(width), d/2);
    vel = new PVector(0,2.5);
    d=15;
  }

  void display() {
    //honestly have no idea what this is for ASK GERSTEIN
    for (int x=0; x<50; x+=1) {
      noStroke();
      image(img1, loc.x, loc.y, d, d);
    }
  } 

  void move() {
    loc.add(vel); //makes raindrops fall

    if (loc.x-d/2>width) {
      loc.x=-d/2;
    } 

    if (loc.x+d/2<0) {
      loc.x=width + d/2;
    }

    if (loc.y-d/2>height) {
      loc.y=-d/2;
    }

    if (loc.y+d/2<0) {
      loc.y=height+d/2;
    }
  }
}

