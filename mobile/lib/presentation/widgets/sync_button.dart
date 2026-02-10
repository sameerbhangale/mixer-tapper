import 'package:flutter/material.dart';

class SyncButton extends StatelessWidget {
  const SyncButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: const Color(0xFF2DE36A),
      foregroundColor: Colors.black,
      onPressed: onPressed,
      icon: const Icon(Icons.sync),
      label: const Text('SYNC'),
    );
  }
}
