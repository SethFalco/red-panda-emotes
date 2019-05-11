#!/bin/bash
tag="registry.gitlab.com/elypia/elypia-emotes/imagemagick:7.0.8.44-r0"

docker build -t ${tag} .

sudo docker run -v `pwd`:/home/imagemagick \
    ${tag}                                 \
    sh scripts/build.sh