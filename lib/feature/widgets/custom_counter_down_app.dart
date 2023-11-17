import 'package:flutter/material.dart';

class CustomNumberContainer extends StatelessWidget {
  final String text;
  const CustomNumberContainer({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 22),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Text(
        text,
        // duration.inHours.toString().padLeft(2, "0"),
        style: const TextStyle(
          fontSize: 77,
        ),
      ),
    );
  }
}
