echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
docker push steve1313/dnd-5e-api