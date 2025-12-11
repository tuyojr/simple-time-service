from fastapi import FastAPI, Request
from pydantic import BaseModel
from datetime import datetime, timezone
import uvicorn

app = FastAPI(
    title="SimpleTimeService",
    description="A simple Particle41 microservice that returns the current timestamp and visitor IP.",
    version="1.0.0",
)

class TimeResponse(BaseModel):
    timestamp: str
    ip: str

def get_client_ip(request: Request) -> str:
    return request.client.host if request.client else "unknown"

@app.get("/", response_model=TimeResponse)
async def get_time_and_ip(request: Request) -> TimeResponse:
    return TimeResponse(
        timestamp=datetime.now(timezone.utc).isoformat(),
        ip=get_client_ip(request),
    )

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)