# High-Level UI Concept

## Primary Screen: Performance Mode

### Layout (Portrait)
- **Top Bar**
  - BPM selector
  - Time signature chip
  - Bluetooth status badge
- **Center Area**
  - 4 large tap pads (Kick, Snare, Clap, Perc)
  - Circular loop progress ring around pads
- **Right Floating Action**
  - Large **Green Sync** button (always visible)
- **Bottom Mixer Strip**
  - Layer volume sliders
  - Mute/solo toggles
  - Master volume

### Interaction Model
- Tap pads to record in armed mode.
- Loop ring animates current playhead position.
- Green Sync button pulses once alignment is applied.
- Long-press pad opens sample selector.

## Secondary Screens
- **Session Library**: saved grooves with quick load.
- **Settings**: latency calibration, audio route, theme, accessibility.

## Visual Style
- Dark stage theme (`#101114` base).
- Accent green for sync/action (`#2DE36A`).
- High-contrast text and oversized controls.

## Accessibility
- 48dp+ tap targets.
- Optional haptic beat feedback.
- Colorblind-safe indicators beyond color alone.

## Wireframe (Text)

```text
+------------------------------------------------+
| BPM 120 | 4/4 | BT: Connected                  |
|                                                |
|          ( Loop Progress Circle )              |
|            [Kick]   [Snare]                    |
|            [Clap]   [Perc ]            [SYNC]  |
|                                      (GREEN)   |
|------------------------------------------------|
| Kick vol  Snare vol  Clap vol  Perc vol Master |
| [====]    [=== ]     [====]    [==  ]  [====]  |
+------------------------------------------------+
```
