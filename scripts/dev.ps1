docker run -v ${pwd}:/home/imagemagick         `
    "registry.gitlab.com/elypia/elypia-emotes" `
    /bin/sh                                    `
        -c "sed -i 's/\r//g' scripts/*.sh   && `
            bash scripts/test.sh            && `
            bash scripts/build.sh           && `
            sh scripts/pages.sh"

# This will only use the repositories latest image which is considered a stable
# and ready to build on, and won't do much else.
