import 'package:flutter/material.dart';
import '../view/button_widget.dart';
import '../model/timer.dart';

// Расширение, позволяющее работать с Enum по-другому (вернуть список виджетов)
extension ButtonStateExt on ButtonState {

  List<Widget> get ButtonIconWidget {
    switch (this) {
      case ButtonState.initial:
        return [AddTime(), SizedBox(width: 20,), StartButton(), ];
      case ButtonState.started:
        return [PauseButton(),SizedBox(width: 20),ResetButton(),];
      case ButtonState.paused:
        return [StartButton(),SizedBox(width: 20),ResetButton(),];
      case ButtonState.finished:
        return [ResetButton()];
    }
  }
}