#!/bin/bash
PARENT=$(pwd)
echo "Cleaning up ..."
docker rmi inugroho/base-image
docker rmi inugroho/base-image-jre
docker rmi inugroho/phensley-dns
docker rmi inugroho/activemq
docker rmi inugroho/builder
docker rmi inugroho/microservice-base

echo "base-image"
cd $PARENT/base-image
docker build . -t inugroho/base-image
docker push inugroho/base-image

echo "base-image-jre"
cd $PARENT/base-image-jre
docker build . -t inugroho/base-image-jre
docker push inugroho/base-image-jre

echo "phensley-dns"
cd $PARENT/phensley-dns
docker build . -t inugroho/phensley-dns
docker push inugroho/phensley-dns

echo "activemq"
cd $PARENT/activemq
docker build . -t inugroho/activemq
docker push inugroho/activemq

echo "builder"
cd $PARENT/builder
docker build . -t inugroho/builder
docker push inugroho/builder

echo "microservice-base"
cd $PARENT/microservice-base
docker build . -t inugroho/microservice-base
docker push inugroho/microservice-base

cd $PARENT
