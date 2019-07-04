FROM bash:5.0.7
RUN adduser -u 1001 -Sh /home/imagemagick imagemagick                     && \
    apk add --no-cache --update imagemagick ttf-dejavu=2.37-r1 zip=3.0-r7 
USER imagemagick
WORKDIR /home/imagemagick
