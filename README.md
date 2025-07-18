# Red Panda Emotes

[![Build](https://gitlab.com/SethFalco/red-panda-emotes/badges/main/pipeline.svg)](https://gitlab.com/SethFalco/red-panda-emotes/commits/main) [![Download](https://img.shields.io/badge/download-emotes-blue)](https://gitlab.com/SethFalco/red-panda-emotes/-/jobs/artifacts/main/download?job=build)

## About

Cute red panda emotes! Anyone is welcome to use, modify, derive, and redistribute the emotes and project files, even commercially.

Please don't ask for permission to use them, just use them. As part of the license, you should attribute the original authors or link to this repository. ^-^'

## Emotes

### Colors

![All Colors](https://gitlab.com/SethFalco/red-panda-emotes/-/jobs/artifacts/main/raw/build/montages/colors.png?job=build)

### Emotes

![All Emotes](https://gitlab.com/SethFalco/red-panda-emotes/-/jobs/artifacts/main/raw/build/montages/emotes.png?job=build)

## Attribution

Assets have been contributed by the following illustrators:

* [Moriko](https://morikomasuyoart.artstation.com)
* [DefectiveFox](https://defectivefox.com)
* [Vukory](https://vukory.art)
* [All Other Contributors](https://gitlab.com/SethFalco/red-panda-emotes/-/graphs/main)

## Technical Details

### OpenRaster (ORA)

All project files in this repository are `.ora` files, the file format for [OpenRaster](https://wikipedia.org/wiki/OpenRaster).

OpenRaster is an interchange format developed by the Open Source community, including the developers of [Krita](https://krita.org) and [GIMP](https://www.gimp.org).

#### Why are we using ORA?

* It's a patent free and open format with a [public specification](https://www.freedesktop.org/wiki/Specifications/OpenRaster/).
* It's designed to be an interchange format, unlike PSD, or XCF which are internal structures.
* Widely backed by the Open Source community, and is even the default format for MyPaint and Nathive.
* Supports layers and other project features that formats like PNG don't.
* Can be opened without specialized software, try opening it as a ZIP
file and look inside!

#### What if my drawing software doesn't support OpenRaster?

You'll probably be able to convert the OpenRaster file into another format compatible with your drawing software. [Krita](https://krita.org) and [GIMP](https://www.gimp.org) are both free programs that are capable of reading ORA files and exporting them into formats like PSD. When converting it back, be wary of vendor-specific features that may have been used when drawing the image, you may have to rasterize or merge some layers.

Meanwhile, you could always ask them to support the format!
