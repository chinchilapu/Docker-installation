mkdir doc-noc
cd doc-noc
nano file.py
"
from flask import Flask
file = Flask(__name__)
file.route('/')
def hello():
  return "Hey there! what's up"
file.run(host = "0.0.0.0", port = 5000)
"
nano requirments.txt 
"
flask
"
nano Dockerfile
/*
FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
CMD ["python", "file.py"]
*/

