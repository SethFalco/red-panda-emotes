FROM alpine:3.9.3
RUN adduser -Sh /home/imagemagick imagemagick           && \
    apk add --no-cache --update imagemagick=7.0.8.44-r0
USER imagemagick
WORKDIR /home/imagemagick
