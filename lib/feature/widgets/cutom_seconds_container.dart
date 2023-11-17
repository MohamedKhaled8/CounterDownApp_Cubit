import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatchtimer/feature/widgets/custom_counter_down_app.dart';
import 'package:stopwatchtimer/feature/manger/cubit/stop_watch_counter_cubit.dart';

class CustomSecondsContainer extends StatelessWidget {
  const CustomSecondsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: UniqueKey(),
      children: [
        BlocBuilder<TimerCubit, Duration>(
          builder: (context, state) {
            return CustomNumberContainer(
              text: state.inSeconds
                  .remainder(60)
                  .toString()
                  .padLeft(2, "0"),
            );
          },
        ),
        const Text(
          "Seconds",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ],
    );
  }
}