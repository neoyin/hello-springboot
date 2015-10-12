#!/bin/bash
set -e  
cd /var/cache/drone/src/path/to/app

# [pass tests here]

wrapdocker &  
sleep 5

docker build -t venizeng/hello-springboot .  
docker push venizeng/hello-springboot  
