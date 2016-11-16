#!/bin/sh
cat > Dockerfile <<_EOF_
FROM alpine:3.3 
RUN apk update
RUN apk add --no-cache make
RUN apk add --no-cache linux-headers
RUN apk add --no-cache texinfo
RUN apk add --no-cache gcc
RUN apk add --no-cache g++

COPY . /src/myapp
WORKDIR /src/myapp
#RUN gcc -o hello hello.c
CMD ["./hello"]
_EOF_

docker build -t dinarapplatix/alpine-compiled:v2 . 
sleep 5
docker images 
sleep 5
docker login -u dinarapplatix -p Test1234!@#$ 
sleep 5

docker push dinarapplatix/alpine-compiled:v2
