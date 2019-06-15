#!/bin/sh
if [ -d public/ ]; then rm -rf public/*; fi

mkdir -p public/
zip -rq public/emotes.zip output/ 

# Create montages by using a glob and name of the montage output
sh scripts/montage.sh "*/128px/*pandaAww.png" "colors"
sh scripts/montage.sh "red/128px/*"           "emotes"
