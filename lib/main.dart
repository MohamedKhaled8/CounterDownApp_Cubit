import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stopwatchtimer/feature/home/custom_number_container.dart';
import 'package:stopwatchtimer/feature/manger/cubit/stop_watch_counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterDownApp(),
      ),
    );
  }
}
