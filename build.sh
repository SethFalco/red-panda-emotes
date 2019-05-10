#!/bin/sh
if [ -d output/ ]; then rm -r output/; fi
if [ -d public/ ]; then rm -r public/; fi

for file in emotes/*
do
    filename=$(identify -format "%t" ${file})
    echo "Exporting: ${filename}"

    # When adding a color, just append the hue parameter here, and add
    # the name of the color the emote should become to the case.
    for hue in "100,100,100" "100,100,0" "100,100,166" "100,100,125" "100,100,66.6" 
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
            "100,100,125")
                color=yellow
                ;;
            "100,100,66.6")
                color=pink
                ;;
        esac

        # When adding a new resolution, just append the output size here.
        for size in 512 258 128 64 32
        do
            mkdir -p output/${color}/${size}px/

            if [ -f "masks/${filename}Mask.png" ]; then
                convert -mask "masks/${filename}Mask.png" -modulate ${hue} -resize ${size}x${size} ${file} "output/${color}/${size}px/${filename}.png";
            else
                convert -modulate ${hue} -resize ${size}x${size} ${file} "output/${color}/${size}px/${filename}.png";
            fi
        done
    done
done

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
        -annotate +0+0 %t            \
    public/emotes.png
    