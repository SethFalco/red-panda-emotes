FROM alpine
RUN adduser -Sh /home/imagemagick imagemagick && \
    apk add --no-cache --update imagemagick
USER imagemagick
WORKDIR /home/imagemagick