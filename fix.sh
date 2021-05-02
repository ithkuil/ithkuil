docker kill ime
docker rm -f ime

docker run -d -it --name ime  \
-v $(pwd)/src:/app/src/:Z \
-v $(pwd)/docs:/app/docs/:Z \
-p 8000:8000 \
ime
docker exec -it ime bash -c "mkdocs build -d /app/docs"
git add . ; git commit -m "fix" ; git push