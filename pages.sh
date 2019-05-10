#!/bin/sh
if [ -d public/ ]; then rm -r public/; fi

mkdir public/
zip -r public/emotes.zip output/ 

montage                                 \
        -background none                \
        -geometry +2+2                  \
        -tile 8x                        \
    output/*/128px/pandaAww.png         \
        -gravity north                  \
        -extent 128x144                 \
        -gravity south                  \
        -fill '#0008'                   \
        -draw 'rectangle 0,128,144,144' \
        -fill white                     \
        -pointsize 14                   \
        -font DejaVu-LGC-Sans           \
        -annotate +0+0 %t               \
    public/colors.png

montage                                 \
        -background none                \
        -geometry +2+2                  \
        -tile 8x                        \
    output/red/128px/*                  \
        -gravity north                  \
        -extent 128x144                 \
        -gravity south                  \
        -fill '#0008'                   \
        -draw 'rectangle 0,128,144,144' \
        -fill white                     \
        -pointsize 14                   \
        -font DejaVu-LGC-Sans           \
        -annotate +0+0 %t               \
    public/emotes.png