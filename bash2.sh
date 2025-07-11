mkdir doc-noc
cd doc-noc
nano app.py

/*
from flask import Flask
app = Flask(__name__)
app.route('/')
def hello():
  return "Hey there! what's up"
if __name__ == "__main__":
     app.run(host = "0.0.0.0", port = 5000)
*/

nano requirments.txt 
/*
flask
*/

nano Dockerfile
/*
FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "app.py"]
*/

nano docker-compose.yml
/*
version: "3.8"

services:
  web:
    build:
      context: .
      dockerfile: Dockerfile   # or "dockerfile" if yours is lowercase
    ports:
      - "5000:5000"
    restart: always
*/
docker-compose up --build (or)
docker-compose build --no-cache

#if can't open py:
ls -l | grep app.py


