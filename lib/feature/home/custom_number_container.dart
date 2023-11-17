import 'package:flutter/material.dart';
import 'package:stopwatchtimer/feature/widgets/custom_body_counter_down.dart';

class CounterDownApp extends StatelessWidget {
  const CounterDownApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: CustomBodyCounterDownApp(),
    );
  }
}
