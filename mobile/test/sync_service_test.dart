import 'package:flutter_test/flutter_test.dart';
import 'package:tapper_mixer/domain/services/sync_service.dart';

void main() {
  test('calculateAlignmentMicros aligns to next beat with latency offset', () {
    final service = SyncService();
    final alignment = service.calculateAlignmentMicros(
      nowMicros: 2200,
      beatLengthMicros: 1000,
      outputLatencyMicros: 150,
    );

    expect(alignment, 3150);
  });
}
