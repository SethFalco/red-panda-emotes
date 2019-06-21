docker run -v ${pwd}:/home/imagemagick         `
    "registry.gitlab.com/elypia/elypia-emotes" `
    /bin/sh                                    `
        -c "sed -i 's/\r//g' scripts/*.sh   && `
            bash scripts/test.sh            && `
            bash scripts/build.sh           && `
            sh scripts/pages.sh"

# This will just used the repositories latest image
# only which is considered a stable image
# ready to build on. This and can not do anything else.
