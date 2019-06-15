#!/bin/sh
if [ -d output/ ]; then rm -rf output/*; fi

for file in emotes/*
do
    title=$(identify -format "%t" ${file})
    emote="${title}.png"
    mask="masks/${title}Mask.png"

    echo "Exporting: ${file}"
    # Append lines here for colors (Color | Prefix | Hue)
    sh scripts/export.sh "red"    ""  "100,100,100"  ${file} ${emote} ${mask}
    sh scripts/export.sh "blue"   "b" "100,100,0"    ${file} ${emote} ${mask}
    sh scripts/export.sh "green"  "g" "100,100,166"  ${file} ${emote} ${mask}
    sh scripts/export.sh "pink"   "p" "100,100,66.6" ${file} ${emote} ${mask}
    sh scripts/export.sh "yellow" "y" "100,115,115"  ${file} ${emote} ${mask}
done
