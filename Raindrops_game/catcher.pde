class Catcher {
  PVector catchloc;
  int d;
  
  Catcher() {
    catchloc = new PVector(mouseX, height/2);
    d = 30;
  }
  
  void displaycatch() {
    catchloc.x = mouseX;
    ellipse(catchloc.x, catchloc.y, d, d);
  }
}
