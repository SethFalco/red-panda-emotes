#!/bin/sh
mkdir output/
cd emotes/

for s in 256 128 64 32
do
    mkdir ../output/${s}x${s}
    
    for f in ./*
    do
        convert "./${f}" -resize ${s}x${s} "../output/${s}x${s}/${f}";
    done
done

cd ..
mv emotes/ output/src/