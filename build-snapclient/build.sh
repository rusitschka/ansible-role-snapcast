#!/bin/bash -ex

docker rmi snapclient || true
docker build -t snapclient .
DEST=$PWD/../files
mkdir -p $DEST
rm $DEST/snapclient_*.deb || true
docker run -it --rm -v $DEST:/host snapclient bash -c 'cp snapclient_*.deb /host'
