from fastapi import APIRouter

from app.schemas.session import SessionCreateRequest, SessionCreateResponse

router = APIRouter()


@router.post("/sessions", response_model=SessionCreateResponse)
def create_session(request: SessionCreateRequest) -> SessionCreateResponse:
    return SessionCreateResponse(
        id="local-dev-session",
        name=request.name,
        bpm=request.bpm,
        bars=request.bars,
    )


@router.get("/presets")
def list_presets() -> dict[str, list[dict[str, str | int]]]:
    return {
        "items": [
            {"id": "preset-001", "name": "Basic 4x4", "bpm": 120},
            {"id": "preset-002", "name": "Slow Groove", "bpm": 92},
        ]
    }


@router.post("/telemetry/performance")
def telemetry_performance(payload: dict) -> dict[str, str]:
    _ = payload
    return {"status": "accepted"}
