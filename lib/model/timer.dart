import 'dart:async';

class Ticker {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      Duration(seconds: 1),
          (x) => ticks - x - 1,
    ).take(ticks);
  }
}

// Класс таймера, состоящий из:
//
// - ОСТАВШЕГОСЯ ВРЕМЕНИ (STR)
// - ТЕКУЩЕГО СОСТОЯНИЯ КНОПОК
class TimerModel {
  const TimerModel(this.timeLeft, this.buttonState);

  final String timeLeft;
  final ButtonState buttonState;
}

// Состояния таймера
enum ButtonState {
  initial,
  started,
  paused,
  finished,
}