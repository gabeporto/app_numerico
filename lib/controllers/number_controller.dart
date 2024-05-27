import 'package:ex06_application/model/number.dart';

class NumberController{
  static final NumberController instance = NumberController._();

  NumberController._();

  void increaseFive() {
    Number.instance.setCounter(Number.instance.getCounter() + 5);
  } 

  void decreaseFive() {
    Number.instance.setCounter(Number.instance.getCounter() - 5);
  } 

  void multiplyByTwo() {
    Number.instance.setCounter(Number.instance.getCounter() * 2);
  }

  void reset() {
    Number.instance.setCounter(0);
  }

  String getNumberStatus() {
    int number = Number.instance.getCounter();
    return number.isEven ? 'par' : 'ímpar';
  }
}