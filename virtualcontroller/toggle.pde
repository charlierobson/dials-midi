class toggle extends dial
{
  float _width, _height;
  boolean _state;
  String _label;

  int _channel, _ccnumber;

  toggle(float x, float y, float w, float h, int channel, String label, int ccnumber) {
    super(x, y, 0, 0, label);
    _width = w;
    _height = h;
    _state = false;
    _label = label;
    _channel = channel;
    _ccnumber = ccnumber;
  }

  @Override
  void mousePressed() {
    float x = _x - (_width / 2);
    float y = _y - (_height / 2);

    if (mouseX >= x && mouseX < x + _width && mouseY >= y && mouseY < y + _height) {
      _state = !_state;
    }
  }

  @Override
  void draw() {
    stroke(0);
    strokeWeight(3);

    if (_state) fill(color(240,240,50)); else noFill();
    rectMode(CENTER);
    rect(_x, _y, _width, _height);

    fill(0);
    textAlign(CENTER, CENTER);
    text(_label, _x, _y);
  }
}
