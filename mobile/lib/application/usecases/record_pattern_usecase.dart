import '../../domain/entities/beat_event.dart';
import '../../domain/entities/loop_pattern.dart';

class RecordPatternUseCase {
  LoopPattern execute({
    required int bpm,
    required int bars,
    required List<BeatEvent> capturedEvents,
  }) {
    return LoopPattern(bpm: bpm, bars: bars, events: capturedEvents);
  }
}
