dial[] dials = new dial[3];

void setup() {
  size(320,200);
  dials[0] = new dial(100, 100, 70, 100);
  dials[1] = new dial(180, 100, 40, 50);
  dials[2] = new dial(240, 100, 40, 2);
}



void draw() {
  background(0);
  stroke(255);
  for(dial d : dials) {
    d.draw();
  }
}

void mouseDragged() {
  for(dial d : dials) {
    d.mouseDragged();
  }
}
void mousePressed() {
  for(dial d : dials) {
    d.mousePressed();
  }
}
void mouseReleased() {
  for(dial d : dials) {
    d.mouseReleased();
  }
}
