#!/bin/sh
if [ -d output/ ]; then rm -r output/; fi
if [ -d public/ ]; then rm -r public/; fi

for file in emotes/*
do
    filename=$(identify -format "%t" ${file})
    echo "Exporting: ${filename}"

    # When adding a color, just append the hue parameter here, and add
    # the name of the color the emote should become to the case.
    for hue in "100,100,100" "100,100,0" "100,100,166" "100,100,66.6" "100,100,125"
    do
        case ${hue} in
            "100,100,100")
                color=red
                ;;
            "100,100,0")
                color=blue
                ;;
            "100,100,166")
                color=green
                ;;

            "100,100,66.6")
                color=pink
                ;;
            "100,100,125")
                color=yellow
                ;;
        esac

        # When adding a new resolution, just append the output size here.
        for size in 512 258 112 128 64 56 28
        do
            mkdir -p output/${color}/${size}px/

            if [ -f "masks/${filename}Mask.png" ]; then
                mask="-clip-mask masks/${filename}Mask.png"
            else
                unset mask
            fi

            magick                                          \
                ${file}                                     \
                    ${mask}                                 \
                    -modulate ${hue}                        \
                    +clip-mask                              \
                    -filter Catrom                          \
                    -resize ${size}X${size}                 \
                "output/${color}/${size}px/${filename}.png"
        done
    done
done

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

    montage                                  \
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
