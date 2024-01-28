#!/bin/bash

#1 Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama ghcr.io/arioganiiswahyudi/karsajobs-ui:latest (untuk frontend)
docker build -t ghcr.io/arioganiiswahyudi/karsajobs-ui:latest .

#2 Perintah untuk login ke GitHub Package
echo $PAT | docker login ghcr.io --username arioganiiswahyudi --password-stdin

#3 Perintah untuk push image ke Github Packages
docker push ghcr.io/arioganiiswahyudi/karsajobs-ui:latest