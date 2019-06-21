#!/bin/bash
tag=${1}

if [ -z "${tag}" ]
then 
    tag="/imagemagick" 
fi

docker run -v $(pwd):/home/imagemagick               \
    "registry.gitlab.com/elypia/elypia-emotes${tag}" \
    /bin/sh                                          \
        -c "bash scripts/test.sh                  && \
            bash scripts/build.sh                 && \
            sh scripts/pages.sh"

# This is for testing images, it defaults to the latest
# ImageMagick image, however can be overridden by specifying
# an image name as the first parameter.