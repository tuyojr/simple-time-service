FROM python:3.12-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN useradd --create-home --shell /bin/bash particleuser && \
    chown -R particleuser:particleuser /app

USER particleuser

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

LABEL APP="SimpleTimeService" \
      DESCRIPTION="Microservice that returns the current timestamp and visitor IP." \
      VERSION="1.0.0" \
      MAINTAINERS="41 DevOps Particles"
