#!/bin/bash
tag="registry.gitlab.com/elypia/elypia-emotes/imagemagick"

# ${1} to specify arguments like --no-cache
cat Dockerfile | docker build ${1} -t ${tag} -

docker run -v `pwd`:/home/imagemagick                                             \
    ${tag}                                                                        \
    /bin/sh                                                                       \
        -c "bash scripts/test.sh && bash scripts/build.sh && sh scripts/pages.sh"

# If ${2} is true, push the image to GitLab.
if [ "${2}" = "true" ]; then
    docker push ${tag}
fi
