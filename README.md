<div align="center">

# Elypia Emotes
[![Matrix]][matrix-community] [![Discord]][discord-guild] [![Build]][gitlab] [![Donate]][elypia-donate]
</div>

## About
All emotes for Elypia primiarly consisting of red pandas, but may include
characters that represent our projects, or generic objects. Anyone is welcome to use, modify,
derive, and redistribute all emotes, animations, and project files in the repository, 
even commercially.

## Creative Commons
The emotes are licensed under [Creative Commons Attribution 4.0 International] (CC BY 4.0)!  
You can find a [human readable summary] that sums up what you're allowed and not allowed to do 
along with any requirements. 

The only requirement is that one should attribute where the original work came from,
if and where reasonable, the minimum expectation is just a link to the repository, but
the ideal attribution would be something like:

> [Elypia Emotes](https://gitlab.com/Elypia/elypia-emotes) by [Elypia CIC and Contributors](https://gitlab.com/Elypia/elypia-emotes/-/graphs/master) is licensed under [CC BY 4.0][human readable summary].

Read more about attributing work under Creative Commons [here](https://creativecommons.org/use-remix/attribution/)!

## Download
You can download all emotes [here]! 

## Emotes
### Colors
![All Colors]

### Emotes
![All Emotes]

## Attributions
Special thanks to the following who have made the project what it is today:

| Attributee                                                                        | Contribution                                                                                   |
|-----------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------|
| [Froppy](https://www.froppy.art/)                                                 | Designed and drew the first iteration of emotes, including over 50 images.                     |
| [DefectiveFox](https://www.defectiveart.ink/)                                     | HD~ified emotes, contributed new ones, and assisted in defining the automated workflow.        |
| [Vukory](https://github.com/Vukory/)                                              | Contributed new emotes and assisted in setting project guidelines.                             |
| [All Other Contributors](https://gitlab.com/Elypia/elypia-emotes/-/graphs/master) | Contributing to the project through issues, pull requests, and supporting the people involved. |

## Contributing
For information on contributing please check out [the contribution guide]. 

## Technical Details
This section is for technical details which we'd like for people to know, or have
access to on demand, but isn't really required by the average user to care about.

### OpenRaster (ORA)
All project files in this repository are .ora files, the file format
for [OpenRaster].

[OpenRaster] is an interchange format developed by the open-source
community including the developers of [GIMP] and [Krita]. It's an open
format designed to be an alternative to the proprietary PSD file
in this regard.

#### Why are we using ORA?
* It's a patent free and open format with a [public specification].
* It's designed to be an interchange format, unlike PSD, or XCF which
are internal structures.
* Widely backed by the open-source community, and is even the default
format for MyPaint and Nathive.
* Supports layers and other project features that formats like PNG
don't.
* Can be opened without specialized software, try opening it as a ZIP
file and look inside!

#### What if my drawing program doesn't support OpenRaster?
You can use something like [GIMP] or [Krita], which are both free and open-source,
to convert it to a format compatible with your drawing software first.
When converting it back, be wary of program specific features that may have 
been used to draw the image when trying to convert it back to OpenRaster, 
you may have to rasterize or merge some layers.

Meanwhile you could always ask them to support the format!

[matrix-community]: https://matrix.to/#/+elypia:matrix.org "Matrix Invite"
[discord-guild]: https://discord.com/invite/hprGMaM "Discord Invite"
[gitlab]: https://gitlab.com/Elypia/elypia-emotes/commits/master "Repository on GitLab"
[elypia-donate]: https://elypia.org/donate "Donate to Elypia"
[the contribution guide]: ./CONTRIBUTING.md "Contribute to the Elypia Emotes"
[here]: https://gitlab.com/Elypia/elypia-emotes/-/jobs/artifacts/master/download?job=build "All Emotes Packaged"
[Creative Commons Attribution 4.0 International]: https://creativecommons.org/licenses/by/4.0/legalcode "CC-BY License"
[human readable summary]: https://creativecommons.org/licenses/by/4.0/ "Human Readable Summary of CC-BY"
[OpenRaster]: https://en.wikipedia.org/wiki/OpenRaster "OpenRaster on Wikipedia"
[GIMP]: https://www.gimp.org/ "GIMP"
[Krita]: https://krita.org/ "Krita"
[public specification]: https://www.freedesktop.org/wiki/Specifications/OpenRaster/ "Specification for OpenRaster"

[Matrix]: https://img.shields.io/matrix/elypia:matrix.org?logo=matrix "Matrix Shield"
[Discord]: https://discord.com/api/guilds/184657525990359041/widget.png "Discord Shield"
[Build]: https://gitlab.com/Elypia/elypia-emotes/badges/master/pipeline.svg "GitLab Build Shield"
[Donate]: https://img.shields.io/badge/elypia-donate-blueviolet "Donate Shield"
[All Colors]: https://gitlab.com/Elypia/elypia-emotes/-/jobs/artifacts/master/raw/build/montages/colors.png?job=build "All Colors"
[All Emotes]: https://gitlab.com/Elypia/elypia-emotes/-/jobs/artifacts/master/raw/build/montages/emotes.png?job=build "All Unique Emotes"
