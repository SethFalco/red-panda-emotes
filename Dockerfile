FROM gcc:9.1.0
RUN useradd -mu 1001 -s /bin/bash imagemagick                       && \
    apt update                                                      && \
    apt install zip                                                 && \
    wget https://imagemagick.org/download/ImageMagick.tar.gz        && \
    mkdir ImageMagick                                               && \
    tar xvzf ImageMagick.tar.gz -C ImageMagick --strip-components=1 && \
    cd ImageMagick                                                  && \
    ./configure                                                        \
        --disable-hdri                                                 \
        --with-quantum-depth=8                                      && \
    make                                                            && \
    make install
USER imagemagick
WORKDIR /home/imagemagick
