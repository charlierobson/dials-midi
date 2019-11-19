ArrayList<dial> dials = new ArrayList<dial>();


void addChannel(int channel) {
  --channel;
  int xp = 100 + (200 * channel);
  
  dials.add(new dial_cc(xp, 50, 50, channel, "Amplitude", 11, 16));
  dials.add(new dial_cc(xp, 140, 50, channel, "Coarse Tune", 42, 128));

  dials.add(new toggle(xp, 240, 80, 30, channel, "AM Enable", 70));
  dials.add(new dial_cc(xp-30, 290, 50, channel, "Speed", 18, 128));
  dials.add(new dial_cc(xp+30, 290, 50, channel, "Depth", 19, 128));

  dials.add(new toggle(xp, 390, 80, 30, channel, "VB Enable", 71));
  dials.add(new dial_cc(xp-30, 440, 50, channel, "Speed", 20, 128));
  dials.add(new dial_cc(xp+30, 440, 50, channel, "Depth", 21, 128));
}

void setup() {
  size(800,600);
  addChannel(1);
  addChannel(2);
  addChannel(3);
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
