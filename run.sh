#bin/bash
docker build -t clocktower -f /home/ubuntu/code/townsquare-develop/Dockerfile .
docker stop clocktower
docker rm clocktower
docker run --name clocktower --restart=always   -p 80:80 -d clocktower
docker rmi $(docker images --filter "dangling=true" -q --no-trunc) || true
