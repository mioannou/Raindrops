class Catcher {
  PVector catchloc;
  int d;
  PImage catchimg;

  Catcher() {
    catchimg = loadImage("Bucket.png");
    catchloc = new PVector(mouseX, height*.8);
    d = 50;
  }

  void displaycatch() { //shows catcher on screen
    catchloc.x = mouseX; //catcher moves horizontally with mouse
    image(catchimg, catchloc.x, catchloc.y, d, d);
  }


  void catchDrop(Raindrops drop) {
    if (catchloc.dist(drop.loc) < d*.38 + drop.d/2) { //checks catcher to make sure it touches drops
      drop.loc.set(width*10,-height); //moves raindrop to random location after contact
      drop.vel.set(0, 0); //stops raindrop from moving after contact
      score++; //increases score when drop is caught
    }
  }
}



