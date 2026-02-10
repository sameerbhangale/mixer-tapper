from pydantic import BaseModel, Field


class SessionCreateRequest(BaseModel):
    name: str = Field(min_length=1, max_length=120)
    bpm: int = Field(ge=40, le=240)
    bars: int = Field(ge=1, le=8)


class SessionCreateResponse(BaseModel):
    id: str
    name: str
    bpm: int
    bars: int
