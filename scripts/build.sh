#!/bin/sh
exportemote() {
    # When adding a new resolution, just append the output size here.
    for size in 512 258 128 112 72 64 56 36 28 18
    do
        mkdir -p output/${1}/${size}px/

        if [ -f ${mask} ]; then
            mask_arg="-clip-mask ${mask}"
        else
            unset mask_arg
        fi

        magick                                   \
            ${file}                              \
                ${mask_arg}                      \
                -modulate ${3}                   \
                +clip-mask                       \
                -filter Catrom                   \
                -resize ${size}X${size}          \
            "output/${1}/${size}px/${2}${emote}"
    done
}

if [ -d output/ ]; then rm -rf output/*; fi

for file in emotes/*
do
    title=$(identify -format "%t" ${file})
    emote="${title}.png"
    mask="masks/${title}Mask.png"

    echo "Exporting: ${file}"
    # Append lines here for colors (Color | Prefix | Hue)
    exportemote "red"    ""  "100,100,100"
    exportemote "blue"   "b" "100,100,0"  
    exportemote "green"  "g" "100,100,166"
    exportemote "pink"   "p" "100,100,66.6"
    exportemote "yellow" "y" "100,115,115"
done
