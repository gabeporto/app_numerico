class Number{

  static final Number instance = Number._(0);

  int _counter;

  Number._(this._counter);

  int getCounter(){
    return _counter;
  }

  void setCounter(int count){
    _counter = count;
  }
}