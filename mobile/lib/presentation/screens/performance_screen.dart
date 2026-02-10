import 'package:flutter/material.dart';

import '../../widgets/sync_button.dart';
import '../../widgets/tap_pad.dart';

class PerformanceScreen extends StatelessWidget {
  const PerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Performance')),
      body: Stack(
        children: [
          Column(
            children: const [
              SizedBox(height: 16),
              _TopBar(),
              Expanded(child: _TapPadGrid()),
              _MixerStrip(),
            ],
          ),
          Positioned(
            right: 16,
            bottom: 120,
            child: SyncButton(onPressed: () {}),
          ),
        ],
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Chip(label: Text('BPM 120')),
        Chip(label: Text('4/4')),
        Chip(label: Text('BT Connected')),
      ],
    );
  }
}

class _TapPadGrid extends StatelessWidget {
  const _TapPadGrid();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(24),
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: const [
        TapPad(label: 'Kick'),
        TapPad(label: 'Snare'),
        TapPad(label: 'Clap'),
        TapPad(label: 'Perc'),
      ],
    );
  }
}

class _MixerStrip extends StatelessWidget {
  const _MixerStrip();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.black26,
      child: const Text('Mixer Strip: layer + master volume controls'),
    );
  }
}
