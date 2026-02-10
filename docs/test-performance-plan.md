# Test Strategy and Performance Evaluation

## 1. Test Pyramid
- **Unit Tests**: timing math, quantization, loop boundary calculations.
- **Integration Tests**: audio engine + sequencer + bluetooth output path (simulated where possible).
- **End-to-End Tests**: scripted user flow from app launch to synced playback.

## 2. Functional Test Cases
1. Record 1-bar pattern and verify loop repeats without dropped events.
2. Change BPM mid-session and verify loop re-quantizes correctly.
3. Press Sync during playback and verify alignment at next downbeat.
4. Disconnect/reconnect Bluetooth and verify audio route recovery.

## 3. Performance Benchmarks
- PB1: Tap capture jitter (p95 <= 10 ms).
- PB2: Audio output latency (median <= 40 ms, p95 <= 70 ms).
- PB3: Sync alignment error (<= 20 ms median).
- PB4: CPU usage during 4-layer loop (< 35% on mid-range devices).
- PB5: Battery drain (< 12% per 30 min active session).

## 4. Suggested Automation
- Unit/integration: Flutter test + native instrumentation tests.
- Device lab: Firebase Test Lab / AWS Device Farm.
- Continuous perf regression gate:
  - Fail pipeline if latency or jitter worsens > 15% vs baseline.

## 5. Manual Audio Validation
- Use click-track reference routed through mixer.
- Compare app downbeat pulse with external metronome.
- Perform 10 repeated sync actions and log observed timing offset.

## 6. Test Data & Reporting
- Store run metadata: device model, OS version, audio route type.
- Export CSV/JSON benchmark artifacts.
- Weekly trend review for latency, crashes, and drift.
