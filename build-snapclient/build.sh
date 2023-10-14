#!/bin/bash -ex

docker rmi snapclient || true
docker build -t snapclient .
docker run -it --rm -v $PWD/../files:/host snapclient bash -c 'cp snapclient_*.deb /host'
