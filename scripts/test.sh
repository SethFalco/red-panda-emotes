#!/bin/bash
for FILE in masks/*
do
    MASK=${FILE#*masks/}
    EMOTE=${MASK/Mask/}

    if [ ! -f "emotes/${EMOTE}" ]; then
        error=1
        echo "Failed to find emote for mask: ${MASK}"
    fi
done

if [ ${error} ]; then
    echo "Mask(s) have failed verification"
    exit 1
else
    echo "Verified all emotes succesfully"
fi
