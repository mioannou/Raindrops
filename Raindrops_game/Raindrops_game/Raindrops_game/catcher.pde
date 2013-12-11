class Catcher {
  PVector catchloc;
  int d;
  
  Catcher() {
    catchloc = new PVector(mouseX, height*.8);
    d = 30;
  }
  
  void displaycatch() {
    catchloc.x = mouseX;
    ellipse(catchloc.x, catchloc.y, d, d);
  }


void catchDrop(Raindrops drop) {
  if (catchloc.dist(drop.loc) < d/2 + drop.d/2) { //checks catcher to make sure it touches drops
    drop.loc.set(width*10, height*10); //moves raindrop to random location after contact
    drop.vel.set(0,0);
    score++; //increases score when drop is caught
  }
}
}
