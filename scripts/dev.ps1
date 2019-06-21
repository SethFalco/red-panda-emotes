docker run -v ${pwd}:/home/imagemagick                     `
    "registry.gitlab.com/elypia/elypia-emotes/imagemagick" `
    /bin/sh                                                `
        -c "sed -i 's/\r//g' scripts/*.sh               && `
            bash scripts/test.sh                        && `
            bash scripts/build.sh                       && `
            sh scripts/pages.sh"

# This will just used the repositories latest ImageMagick image
# only, and can not do anything else.
