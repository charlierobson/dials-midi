

ArrayList<Object> dials = new ArrayList<Object>();

public interface drawable {
  void draw();
}

public interface interactable {
  void mousePressed();
  void mouseDragged();
  void mouseReleased();
}

void writeCC(int channel, int ccnumber, int value){
  println("channel: " + str(channel) + "  cc number: " + str(ccnumber) + "  value: " + str(value));
}

void addChannel(int channel) {
  --channel;
  int xp = 100 + (180 * channel);
  
  dials.add(new dial_cc(xp, 50, 50, "Amplitude", 16, channel, 11));
  dials.add(new dial_cc(xp, 140, 50, "Coarse Tune", 128, channel, 42));

  dials.add(new toggle_cc(xp, 240, 80, 30, "AM Enable", channel, 70));
  dials.add(new dial_cc(xp-30, 290, 50, "Speed", 128, channel, 18));
  dials.add(new dial_cc(xp+30, 290, 50, "Depth", 128, channel, 19));

  dials.add(new toggle_cc(xp, 390, 80, 30, "VB Enable", channel, 71));
  dials.add(new dial_cc(xp-30, 440, 50, "Speed", 128, channel, 20));
  dials.add(new dial_cc(xp+30, 440, 50, "Depth", 128, channel, 21));
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
  for(Object d : dials) {
    ((drawable)d).draw();
  }
}

void mouseDragged() {
  for(Object d : dials) {
    ((interactable)d).mouseDragged();
  }
}
void mousePressed() {
  for(Object d : dials) {
    ((interactable)d).mousePressed();
  }
}
void mouseReleased() {
  for(Object d : dials) {
    ((interactable)d).mouseReleased();
  }
}
