${tag} = "registry.gitlab.com/elypia/elypia-emotes/imagemagick:7.0.8.44-r0"

# ${1} to specify arguments like --no-cache
docker build ${1} -t ${tag} .

docker run -v ${pwd}:/home/imagemagick                                                                         `
    ${tag}                                                                                                     `
    /bin/sh                                                                                                    `
        -c "sed -i 's/\r//g' scripts/*.sh && sh scripts/test.sh && sh scripts/build.sh && sh scripts/pages.sh"
