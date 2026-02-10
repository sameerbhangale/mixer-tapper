import 'package:flutter/material.dart';

import 'presentation/screens/performance_screen.dart';

void main() {
  runApp(const TapperMixerApp());
}

class TapperMixerApp extends StatelessWidget {
  const TapperMixerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tapper Mixer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF2DE36A),
          surface: Color(0xFF101114),
        ),
      ),
      home: const PerformanceScreen(),
    );
  }
}
