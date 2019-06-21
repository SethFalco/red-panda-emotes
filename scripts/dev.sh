#!/bin/bash
docker run -v $(pwd):/home/imagemagick             \
    "registry.gitlab.com/elypia/elypia-emotes${1}" \
    /bin/sh                                        \
        -c "bash scripts/test.sh                && \
            bash scripts/build.sh               && \
            sh scripts/pages.sh"

# This is for testing images, it defaults to the latest
# image, however can be overridden by specifying
# an image name as the first parameter.