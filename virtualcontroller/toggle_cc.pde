class toggle_cc extends toggle
{
  int _channel, _ccnumber;

  toggle_cc(float x, float y, float w, float h, String label,
          int channel, int ccnumber) {
    super(x, y, w, h, label);

    _channel = channel;
    _ccnumber = ccnumber;
  }

  @Override
  void onStateChanged() {
    writeCC(_channel, _ccnumber, _state ? 1 : 0);
  }
}
