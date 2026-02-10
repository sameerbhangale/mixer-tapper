# Technical Architecture

## 1. High-Level Stack
- **Mobile Front End**: Flutter (single codebase for Android + iOS) or React Native.
  - Recommendation: **Flutter** for consistent low-latency rendering and audio plugins.
- **Audio Engine Layer**: Native modules
  - iOS: AVAudioEngine / CoreAudio
  - Android: Oboe / AAudio
- **Backend (Optional for MVP)**: Minimal API for telemetry, shared presets (future)
  - FastAPI (Python) or NestJS (Node)
- **Database**:
  - MVP local-only: SQLite on-device (drift/sqflite)
  - Cloud phase: PostgreSQL for users, presets, analytics summaries

## 2. Module Architecture (Mobile)
- `presentation/`
  - screens: Home, Performance, Session Library, Settings
  - widgets: TapPad, SyncButton, LoopRing, MixerPanel
- `application/`
  - use-cases: RecordPattern, QuantizePattern, TriggerSync, SelectOutputDevice
- `domain/`
  - entities: BeatEvent, LoopPattern, Session, AudioDevice
  - services: SyncService, LatencyCompensationService
- `infrastructure/`
  - audio drivers/adapters
  - bluetooth adapter
  - local persistence

## 3. Audio/Sync Flow
1. Tap events timestamped with high-resolution monotonic clock.
2. Quantizer maps events to selected grid.
3. Sequencer schedules sample playback in loop buffer.
4. Sync button sets alignment target at next downbeat + latency offset.
5. Audio output stream sends mixed track to Bluetooth sink.
6. Drift monitor compares expected loop phase vs output callback timing.

## 4. Backend API (Phase 2)
- `POST /v1/sessions` save metadata
- `GET /v1/presets` list groove presets
- `POST /v1/telemetry/performance` upload anonymized timing stats

## 5. Security & Privacy
- No microphone recording stored by default.
- Minimal analytics; opt-in only.
- TLS in transit; encrypted local DB optional for saved sessions.

## 6. Deployment Architecture

### Mobile App Distribution
- Android via Google Play internal track -> production.
- iOS via TestFlight -> App Store.

### Backend Deployment (if enabled)
- Containerized microservice(s) on Kubernetes or ECS.
- Reverse proxy/API gateway (Nginx/Traefik).
- PostgreSQL managed service.
- Redis for short-lived session cache (optional).

### Container/Docker Plan
- `Dockerfile` for backend API (multi-stage build).
- `docker-compose.yml` for local dev:
  - api
  - postgres
  - redis (optional)
  - prometheus + grafana (perf dashboards)

### CI/CD
- GitHub Actions
  - Lint + unit tests
  - Build mobile artifacts
  - Build/push backend Docker image
  - Deploy staging on main branch

## 7. Observability
- Mobile: structured logs + crash reports.
- Backend: OpenTelemetry traces, request latency metrics.
- Performance dashboards for latency, sync accuracy, crash-free rate.
