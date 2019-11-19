class dial_cc extends dial
{
  int _channel;
  int _ccnumber;

  dial_cc(float x, float y, float radius, int channel, String label, int ccnumber, float range) {
    super(x, y, radius, range, label);
    _channel = channel;
    _ccnumber = ccnumber;
  }

  @Override
  void onValueChanging(float prev, float current) {
    println(str(prev) + " -> " + str(current));
  }

  @Override
  void onValueChanged(float prev, float current) {
    println(str(prev) + "..." + str(current));
  }
}
