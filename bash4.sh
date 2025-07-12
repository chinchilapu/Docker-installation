mkdir hi-hello
cd hi-hello

nano app.py
"
from flask import Flask
app = Flask(__name__)
cache = redis.Redis(host="redis", port=6379)
@app.route('/')
def hello():
    cache.incr('hits')
    return f"Hello! I have been seen {cache.get('hits').decode('utf-8')} times."
if __name__ = "__main__":
    app.run(host="0.0.0.0", port=5000)
"

nano requirements.txt
"
flask
redis
"

nano dockerfile
"
FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "app.py"]
"

nano docker-compose.yml
"
version: "3.8"

services:
  web:
    build: .
    ports:
      - "5000:5000"
    depends_on:
      - redis

  redis:
    image: "redis:alpine"
"

docker-compose up --build
docker network ls
