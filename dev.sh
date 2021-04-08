docker kill ime
docker rm -f ime
docker build -t ime .

docker run -d -it --name ime  \
-v $(pwd)/src:/app/src/:Z \
-v $(pwd)/docs:/app/docs/:Z \
-p 7231:8000 \
ime
docker exec -it ime bash