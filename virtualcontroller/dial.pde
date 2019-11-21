class dial implements interactable, drawable
{
  float _x, _y, _radius, _range, _value;

  String _label;

  boolean _adjusting;
  float _previousValue;

  dial(float x, float y, float radius, String label, float range) {
    _x = x;
    _y = y;
    _radius = radius;

    _label = label;

    _range = range - 1;
    _value = 0;
  }

  void setValue(float v) {
    float prevValue = _value;

    if (v > _range) v = _range;
    if (v < 0) v = 0;
    _value = v;

    if (prevValue != _value) {
      onValueChanging(prevValue, _value);
    }
  }

  // override this in child classes if you want
  // prev = last quantum, current = latest
  void onValueChanging(float prev, float current) {
  }

  // override this in child classes if you want
  // prev = value at start of change, current = final value
  void onValueChanged(float prev, float current) {
  }

  void mousePressed() {
    _adjusting = dist(_x, _y, mouseX, mouseY) < _radius / 2;
    if (_adjusting) {
      _previousValue = _value;
    }
  }

  void mouseReleased() {
    _adjusting = false;
    if (_previousValue != _value) {
      onValueChanged(_previousValue, _value);
    }
  }

  void mouseDragged()
  {
    if (_adjusting) {
      setValue(_value - (pmouseX - mouseX));
    }
  }

  void draw()
  {
    push();

    translate(_x, _y);

    fill(0);
    stroke(0);

    textAlign(CENTER,CENTER);
    text(_label + "\n" + str(_value),0,_radius/2+10);

    noFill();
    strokeWeight(3);
    arc(0,0,_radius,_radius, 0.75*PI, 2.25 * PI);
    rotate(_value / _range * 1.5 * PI + (0.75*PI));
    strokeWeight(2);
    line(_radius/5, 0, _radius/2, 00);

    pop();
  }
}
