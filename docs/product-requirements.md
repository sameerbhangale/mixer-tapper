# Tapper Mixer — Product Requirements Document (PRD)

## 1. Product Vision
Tapper Mixer is a mobile app (Android + iOS) for music hobbyists that lets one performer sing/live-play through a physical mixer while another performer taps rhythmic patterns on a mobile device. The app loops these beat patterns and syncs playback with a single green "Sync" action so both tracks play together through the shared speaker system.

## 2. Goals
- Let users create loopable beat patterns quickly (under 10 seconds).
- Enable near-instant sync between live vocal input and app-generated beat loops.
- Provide reliable Bluetooth output routing into a mixer.
- Keep interaction simple enough for casual users in rehearsals, street sessions, and home studios.

## 3. Non-Goals (MVP)
- Full DAW (digital audio workstation) editing.
- Multitrack timeline arrangement.
- Cloud collaboration or social sharing.
- AI-generated accompaniment.

## 4. Target Users
- **Primary**: hobbyist vocalists and instrumentalists jamming in pairs.
- **Secondary**: small music classes, buskers, garage bands.

## 5. Core Use Case
1. Singer connects mic to a hardware mixer.
2. Beat performer opens Tapper Mixer and connects phone to mixer (Bluetooth audio output).
3. Beat performer taps pads/screen rhythmically to build a loop.
4. Loop keeps repeating.
5. Beat performer presses **green Sync button**.
6. App aligns beat cycle immediately so it starts in time with live singing and sends audio to mixer.

## 6. Functional Requirements
- FR1: User can select BPM and time signature (e.g., 4/4, 3/4).
- FR2: User can tap screen pads to record beat pattern for 1, 2, 4, or 8 bars.
- FR3: Loop playback starts automatically after recording.
- FR4: User can quantize taps to nearest subdivision (1/4, 1/8, 1/16).
- FR5: User can mute/unmute layers (kick, snare, clap, percussion).
- FR6: User can adjust volume per layer and master volume.
- FR7: App supports Bluetooth output device selection and reconnection.
- FR8: Pressing green Sync button triggers low-latency phase alignment on next beat boundary.
- FR9: User can save and reload sessions locally.
- FR10: App works offline after installation.

## 7. Non-Functional Requirements
- NFR1: Input-to-output audio latency target < 40 ms on supported devices.
- NFR2: Sync action reaction < 100 ms perceived delay.
- NFR3: Crash-free sessions > 99.5%.
- NFR4: Startup time < 3 seconds on mid-range phones.
- NFR5: Battery drain < 12% per 30 minutes during active playback.

## 8. Platform Requirements
- Android 10+
- iOS 15+
- Bluetooth A2DP output
- Optional wired audio adapter support

## 9. UX Requirements
- Session can begin in <= 3 taps from launch.
- Green Sync button always visible in performance mode.
- Large tap targets for on-stage usage.
- Dark theme by default for low-light environments.

## 10. Risks & Mitigations
- **Bluetooth latency variance** → Latency calibration wizard + per-device offset profile.
- **Timing drift over long loops** → Sample-accurate scheduling + periodic phase correction.
- **Noisy environments** → clear visual metronome and haptic sync cue.

## 11. Success Metrics
- Session completion rate (create + sync loop) > 90% for first-time users.
- Median time to first playable loop < 20 seconds.
- User-rated timing confidence >= 4/5.
