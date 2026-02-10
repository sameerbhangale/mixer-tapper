class BeatEvent {
  BeatEvent({
    required this.timestampMicros,
    required this.instrument,
    required this.velocity,
  });

  final int timestampMicros;
  final String instrument;
  final double velocity;
}
