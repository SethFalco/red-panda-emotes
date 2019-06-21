${tag} = "registry.gitlab.com/elypia/elypia-emotes/imagemagick"

docker build -t ${tag} .

docker run -v ${pwd}:/home/imagemagick                                                                             `
    ${tag}                                                                                                         `
    /bin/sh                                                                                                        `
        -c "sed -i 's/\r//g' scripts/*.sh && bash scripts/test.sh && bash scripts/build.sh && sh scripts/pages.sh"
