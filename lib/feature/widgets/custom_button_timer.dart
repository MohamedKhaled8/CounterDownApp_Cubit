import 'package:flutter/material.dart';
import 'package:stopwatchtimer/feature/manger/cubit/stop_watch_counter_cubit.dart';

class CustomButtonTimer extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final Color color;
  CustomButtonTimer({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  final TimerCubit timerCubit = TimerCubit();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
