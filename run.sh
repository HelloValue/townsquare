#bin/bash
echo -e "---------docker Login--------"
echo $2 | docker login --username=$1 ccr.ccs.tencentyun.com --password-stdin
echo -e "---------docker Stop--------"
docker stop clocktower
echo -e "---------docker Rm--------"
docker rm clocktower
docker rmi ccr.ccs.tencentyun.com/caozenghuang/clocktower:latest
echo -e "---------docker Pull--------"
docker pull ccr.ccs.tencentyun.com/caozenghuang/clocktower:latest
echo -e "---------docker Create and Start--------"
docker run -d -p 80:80 --name clocktower --restart=always ccr.ccs.tencentyun.com/caozenghuang/clocktower:latest
echo -e "---------deploy Success--------"
