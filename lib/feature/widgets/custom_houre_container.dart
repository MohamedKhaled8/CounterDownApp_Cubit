import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatchtimer/feature/widgets/custom_counter_down_app.dart';
import 'package:stopwatchtimer/feature/manger/cubit/stop_watch_counter_cubit.dart';

class CustomHoursContainer extends StatelessWidget {
  const CustomHoursContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<TimerCubit, Duration>(
          builder: (context, state) {
            return CustomNumberContainer(
              text: state.inHours.toString().padLeft(2, "0"),
            );
          },
        ),
        const Text(
          "Hours",
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
      ],
    );
  }
}
