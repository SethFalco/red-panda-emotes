#!/bin/sh
# When adding a new resolution, just append the output size here.
for size in 512 258 128 112 72 64 56 36 28 18
do
    mkdir -p output/${1}/${size}px/

    if [ -f ${6} ]; then
        mask_arg="-clip-mask ${6}"
    else
        unset mask_arg
    fi

    magick                               \
        ${4}                             \
            ${mask_arg}                  \
            -modulate ${3}               \
            +clip-mask                   \
            -filter Catrom               \
            -resize ${size}X${size}      \
        "output/${1}/${size}px/${2}${5}"
done
