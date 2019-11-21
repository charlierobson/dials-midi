class toggle implements drawable, interactable
{
  float _x, _y, _width, _height;
  String _label;

  boolean _state;

  toggle(float x, float y, float w, float h, String label) {
    _x = x;
    _y = y;
    _width = w;
    _height = h;

    _label = label;

    _state = false;
  }

  void mousePressed() {
    float x = _x - (_width / 2);
    float y = _y - (_height / 2);

    if (mouseX >= x && mouseX < x + _width && mouseY >= y && mouseY < y + _height) {
      _state = !_state;
      onStateChanged();
    }
  }

  // override this in derived classes
  void onStateChanged() { }

  void mouseDragged() { }
  void mouseReleased() { }

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
