import 'package:flutter/material.dart';

class TapPad extends StatelessWidget {
  const TapPad({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(120, 120),
      ),
      child: Text(label),
    );
  }
}
