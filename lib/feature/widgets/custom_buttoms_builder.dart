import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatchtimer/feature/widgets/custom_button_timer.dart';
import 'package:stopwatchtimer/feature/manger/cubit/stop_watch_counter_cubit.dart';

class CustomButomsBuilder extends StatefulWidget {
  const CustomButomsBuilder({super.key});

  @override
  State<CustomButomsBuilder> createState() => _CustomButomsBuilderState();
}

class _CustomButomsBuilderState extends State<CustomButomsBuilder> {

  @override
  Widget build(BuildContext context) {
        final timerCubit = BlocProvider.of<TimerCubit>(context);

    return  SizedBox(
          child: BlocBuilder<TimerCubit, Duration>(
            builder: (context, state) {
              return state.inSeconds == 0
                  ? CustomButtonTimer(
                      onPressed: () {
                        if (timerCubit.state.inSeconds == 0) {
                          timerCubit.startTimer();
                        } else {
                          if (timerCubit.repeatedFunction!.isActive) {
                            timerCubit.stopTimer();
                          } else {
                            timerCubit.startTimer();
                          }
                        }
                      },
                      text: timerCubit.repeatedFunction?.isActive ?? false
                          ? "Stop"
                          : "Start Timer",
                      color: const Color.fromARGB(255, 12, 44, 226),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButtonTimer(
                          text: timerCubit.repeatedFunction?.isActive ?? false
                              ? "Stop"
                              : "Resume",
                          onPressed: () {
                            if (timerCubit.repeatedFunction!.isActive) {
                              timerCubit.stopTimer();
                            } else {
                              timerCubit.startTimer();
                            }
                            setState(() {});
                          },
                          color: const Color.fromARGB(255, 197, 25, 97),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        CustomButtonTimer(
                          text: "CANCEL",
                          onPressed: () {
                            timerCubit.resetTimer();
                          },
                          color: const Color.fromARGB(255, 197, 25, 97),
                        ),
                      ],
                    );
            },
          ),
        );
  }
}