class SyncService {
  int calculateAlignmentMicros({
    required int nowMicros,
    required int beatLengthMicros,
    required int outputLatencyMicros,
  }) {
    final beatsPassed = nowMicros ~/ beatLengthMicros;
    final nextBeat = (beatsPassed + 1) * beatLengthMicros;
    return nextBeat + outputLatencyMicros;
  }
}
