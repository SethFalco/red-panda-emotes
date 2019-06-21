#!/bin/sh
for file in masks/*
do
    mask=${file#*masks/}
    emote=${mask/Mask/}

    if [ ! -f "emotes/${emote}" ]; then
        error=1
        echo "Failed to find emote for mask: ${mask}"
    fi
done

if [ ${error} ]; then
    echo "Mask(s) have failed verification"
    exit 1
else
    echo "Verified all emotes succesfully"
fi
