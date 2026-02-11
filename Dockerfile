# Use Python 3.10 on a modern system (Bullseye or Bookworm)
FROM python:3.10-slim

# Install FFmpeg for your music videos and Spleeter
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libsndfile1 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Start the bot brain
CMD ["python", "main.py"]
