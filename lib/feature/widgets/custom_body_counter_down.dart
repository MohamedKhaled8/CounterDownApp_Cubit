import 'package:flutter/material.dart';
import 'package:stopwatchtimer/feature/widgets/custom_buttoms_builder.dart';
import 'package:stopwatchtimer/feature/widgets/custom_houre_container.dart';
import 'package:stopwatchtimer/feature/widgets/cutom_seconds_container.dart';
import 'package:stopwatchtimer/feature/widgets/custom_minutes_container.dart';

class CustomBodyCounterDownApp extends StatelessWidget {
  const CustomBodyCounterDownApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomHoursContainer(),
            SizedBox(
              width: 22,
            ),
            CustomMinutesContainer(),
            SizedBox(
              width: 22,
            ),
            CustomSecondsContainer(),
          ],
        ),
        SizedBox(
          height: 55,
        ),
        CustomButomsBuilder(),
      ],
    );
  }
}
