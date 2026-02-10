# tapper-mixer

Open-source mobile app (Apache-2.0) for Android and iOS that helps music hobbyists tap and loop beats in real time, then sync them with a live singer through a hardware mixer.

## Project foundation artifacts

- Product requirements: `docs/product-requirements.md`
- Epics/features/user stories: `docs/epics-features-user-stories.md`
- Technical architecture + deployment: `docs/technical-architecture.md`
- Test and performance plan: `docs/test-performance-plan.md`
- High-level UI concept: `docs/ui-concept.md`

## Boilerplate structure

- `mobile/` — Flutter app skeleton with layered architecture modules:
  - `lib/presentation/`
  - `lib/application/`
  - `lib/domain/`
  - `lib/infrastructure/`
  - `test/`
- `backend/` — FastAPI service skeleton with Docker support.
- `deploy/docker-compose.yml` — local containerized stack (api + postgres + redis).

## License

This project is licensed under Apache License 2.0.
