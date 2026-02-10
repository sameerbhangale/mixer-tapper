import 'beat_event.dart';

class LoopPattern {
  LoopPattern({
    required this.bpm,
    required this.bars,
    required this.events,
  });

  final int bpm;
  final int bars;
  final List<BeatEvent> events;
}
