#!/bin/sh
if [ -d public/ ]; then rm -r public/; fi

mkdir public/
zip -r public/emotes.zip output/ 

montage                              \
        -background none             \
        -geometry +0+1               \
        -tile 8x                     \
    output/*/64px/pandaAww.png       \
        -gravity north               \
        -extent 74x74                \
        -gravity south               \
        -fill '#0008'                \
        -draw 'rectangle 0,64,77,77' \
        -fill white                  \
        -pointsize 9                 \
        -font DejaVu-LGC-Sans        \
        -annotate +0+0 %t            \
    public/colors.png

montage                              \
        -background none             \
        -geometry +0+1               \
        -tile 8x                     \
    output/red/64px/*                \
        -gravity north               \
        -extent 74x74                \
        -gravity south               \
        -fill '#0008'                \
        -draw 'rectangle 0,64,77,77' \
        -fill white                  \
        -pointsize 9                 \
        -font DejaVu-LGC-Sans        \
        -annotate +0+0 %t            \
    public/emotes.png