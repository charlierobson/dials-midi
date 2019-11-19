ArrayList<dial> dials = new ArrayList<dial>();

void setup() {
  size(640,480);
  dials.add(new dial_cc(100, 50, 50, 1, "Amplitude", 11, 16));
  dials.add(new dial_cc(100, 130, 50, 1, "Coarse Tune", 42, 128));

  dials.add(new toggle(100, 210, 80, 30, 1, "AM Enable", 70));
  dials.add(new dial_cc(50, 260, 50, 1, "Speed", 18, 128));
  dials.add(new dial_cc(150, 260, 50, 1, "Depth", 19, 128));

  dials.add(new toggle(100, 350, 80, 30, 1, "VB Enable", 71));
  dials.add(new dial_cc(50, 400, 50, 1, "Speed", 20, 128));
  dials.add(new dial_cc(150, 400, 50, 1, "Depth", 21, 128));



}



void draw() {
  background(128);
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
