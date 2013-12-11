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
      noStroke();
      image(img1, loc.x, loc.y, d, d);
  } 

  void move() {
    loc.add(vel); //makes raindrops fall
  }
}

