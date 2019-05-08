FROM alpine
RUN adduser -Sh /home/imagemagick imagemagick && \
    apk add --no-cache --update imagemagick
USER imagemagick
WORKDIR /home/imagemagick

# cat Dockerfile | sudo docker build -t registry.gitlab.com/elypia/elypia-emotes -