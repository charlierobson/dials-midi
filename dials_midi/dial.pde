class dial
{
  float _x, _y, _radius, _range, _value;
  boolean _adjusting;

  dial(float x, float y, float radius, float range) {
    _x = x;
    _y = y;
    _radius = radius;
    _range = range;
  }

  dial(float x, float y, float range) {
    this(x, y, 100, range);
  }

  void setValue(float v) {
    if (v > _range) v = _range;
    if (v < 0) v = 0;
    _value = v;
    
  }

  void mousePressed() {
    _adjusting = dist(_x, _y, mouseX, mouseY) < 50;
  }
  void mouseReleased() {
    _adjusting = false;
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
    noFill();
    textAlign(CENTER,CENTER);
    translate(_x, _y);
    //push();
    //rotate(0.75*PI);
    //line(_radius/2+5, 0, _radius/2+5+(_radius/10), 00);    
    //rotate(1.5 * PI);
    //line(_radius/2+5, 0, _radius/2+5+(_radius/10), 00);    
    //pop();
    text(str(_value),0,_radius/2+10);
    ellipse(0,0,_radius,_radius);
    rotate(_value / _range * 1.5 * PI + (0.75*PI));
    line(_radius/5, 0, _radius/2, 00);
    pop();
  }
}
