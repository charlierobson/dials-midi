class dial_cc extends dial
{
  int _channel, _ccnumber;

  dial_cc(float x, float y, float radius, String label, float range,
            int channel, int ccnumber) {
    super(x, y, radius, label, range);
    _channel = channel;
    _ccnumber = ccnumber;
  }

  @Override
  void onValueChanging(float prev, float current) {
    writeCC(_channel, _ccnumber, (int)current);
  }

  @Override
  void onValueChanged(float prev, float current) {
  }
}
