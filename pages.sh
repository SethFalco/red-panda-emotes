#!/bin/sh
if [ -d public/ ]; then rm -r public/; fi

mkdir public/
zip -r public/emotes.zip output/ 

for i in 0 1
do
    case ${i} in
        0)
            glob="*/128px/pandaAww.png"
            output="colors"
            ;;
        1)
            glob="red/128px/*"
            output="emotes"
            ;; 
    esac

    montage                              \
        -background none                 \
        -geometry +2+2                   \
        -tile 8x                         \
    output/${glob}                       \
        -gravity north                   \
        -extent 128x144                  \
        -gravity south                   \
        -fill '#0008'                    \
        -draw 'rectangle 0,128,144,144'  \
        -fill white                      \
        -pointsize 14                    \
        -font DejaVu-LGC-Sans-ExtraLight \
        -annotate +0+0 %t                \
    public/${output}.png
done
