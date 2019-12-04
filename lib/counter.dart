import 'dart:async';

class Counter {
  int _count = 0;

  final _counterController = StreamController<int>()..add(0);

  get counterStream => _counterController.stream;

  addCount() {
    _count++;
    _counterController.add(_count);
  }
}