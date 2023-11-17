import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
// ignore: depend_on_referenced_packages

part 'stop_watch_counter_state.dart';

class TimerCubit extends Cubit<Duration> {
  Timer? repeatedFunction;

  TimerCubit() : super(const Duration());
  void startTimer() {
    repeatedFunction = Timer.periodic(const Duration(seconds: 1), (timer) {
      int newSeconds = (state).inSeconds + 1;
      emit(Duration(seconds: newSeconds));
    });
  }

  void stopTimer() {
    if (repeatedFunction != null && repeatedFunction!.isActive) {
      repeatedFunction!.cancel();
    }
  }

  void resetTimer() {
    stopTimer();
    emit(const Duration());
  }

  @override
  Future<void> close() {
    stopTimer();
    return super.close();
  }
}
