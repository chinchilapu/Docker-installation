#private docker-registry
docker run -d -p 5000:5000 --name hello-dock registry:2
docker pull unbuntu
docker ps
docker tag ubuntu localhost:5000/ubuntu
docker push localhost:5000/ubuntu
curl http://localhost:5000/v2/_catalog

docker rm ubuntu
docker pull localhost:5000/ubuntu
