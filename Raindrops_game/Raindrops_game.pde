int n = 50;
Raindrops[] r = new Raindrops[n];
Catcher c;

void setup() {
  size(500,500);
  for (int i = 0; i<n; i++) {
    r[i] = new Raindrops();
}
  c = new Catcher();
}

void draw() {
  background(0);
  for (int i = 0; i<n; i ++) {
    r[i].display();
    r[i].move();
  }
  c.displaycatch();
  
}
