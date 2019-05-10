#!/bin/sh
if [ -d output/ ]; then rm -r output/; fi

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
        for size in 512 258 128
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
