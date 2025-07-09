mkdir hello-world
cd hello-world
nano file.py
"
print("Hello World")
"
nano dockerfile
"
FROM python:3.9-slim
WORKDIR /file
COPY . /file
CMD ["python", "file.py"]
"
docker build -t username/hello-world:latest .
docker run username/hello-world:latest
docker login
docker tag username/hello-world:latest username/hello-world:latest
docker push username/hello-world:latest
docker images

