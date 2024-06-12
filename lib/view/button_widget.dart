import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../view_model/timertext_provider.dart';
import '../view_model/button_provider.dart';
import '../view_model/button_ext.dart';

class ButtonsContainer extends HookConsumerWidget {
  const ButtonsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(buttonProvider);

    print('building ButtonsContainer');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: state.ButtonIconWidget,
    );
  }
}

class StartButton extends ConsumerWidget {
  const StartButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).start();
      },
      child: const Icon(Icons.play_arrow),
    );
  }
}

class PauseButton extends ConsumerWidget {
  const PauseButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).pause();
      },
      child: const Icon(Icons.pause),
    );
  }
}

class ResetButton extends ConsumerWidget {
  const ResetButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).reset();
      },
      child: const Icon(Icons.replay),
    );
  }
}

// Добавка времени
class AddTime extends ConsumerWidget {
  const AddTime({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        ref.read(timerProvider.notifier).addTime();
      },
      child: const Icon(Icons.add),
    );
  }
}