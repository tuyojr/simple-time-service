"""
SimpleTimeService - A simple Particle41 microservice that returns timestamp and visitor IP.
"""
from fastapi import FastAPI, Request
from pydantic import BaseModel
from datetime import datetime, timezone
# import uvicorn # uncomment this only if you want to run the python file directly

app = FastAPI(
    title="SimpleTimeService",
    description="A simple Particle41 microservice that returns the current timestamp and visitor IP.",
    version="1.0.0",
)

class TimeResponse(BaseModel):
    """
    Response model for the time service endpoint.
    """
    timestamp: str
    ip: str

def get_client_ip(request: Request) -> str:
    """
    Extract the client IP address from the request.
    """
    return request.client.host if request.client else "unknown"

@app.get("/", response_model=TimeResponse)
async def get_time_and_ip(request: Request) -> TimeResponse:
    """
    Return the current timestamp and visitor's IP address.
    """
    return TimeResponse(
        timestamp=datetime.now(timezone.utc).isoformat(),
        ip=get_client_ip(request),
    )

"""
Uncomment lines 40 - 41 only if you want to test the python file locally.
# if __name__ == "__main__":
#     uvicorn.run(app, host="0.0.0.0", port=8000)
"""