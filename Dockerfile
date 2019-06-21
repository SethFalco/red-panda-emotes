FROM gcc:9.1.0 AS builder
RUN wget https://imagemagick.org/download/ImageMagick.tar.gz && \
    tar xvzf ImageMagick.tar.gz                              && \
    cd ImageMagick-7.0.8-49                                  && \
    ./configure                                                 \
        --prefix=/home/imagemagick/                             \
        --disable-hdri                                          \
        --with-quantum-depth=8                                  \
        --disable-installed                                  && \
    make                                                     && \
    make install

FROM bash:5.0.7
RUN adduser -u 1001 -Sh /home/imagemagick imagemagick         && \
    apk add --no-cache --update ttf-dejavu=2.37-r1 zip=3.0-r7                                       
USER imagemagick
WORKDIR /home/imagemagick
COPY --from=builder /home/imagemagick/ /home/imagemagick/
