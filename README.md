# Elypia Emotes [![discord-members]][discord] [![gitlab-build]][gitlab] [![donate-shield]][elypia-donate]
All emotes for Elypia which are open-source and available via the Apache 2.0 license.  
For information on contributing please check out [the contribution guide]. 

## Download
You can download all emotes [here]!  

---

Sometimes GitLab Pages isn't up to date with the repo, if there's an emote you want but you can't find it in the archive,
feel free to [download] the artifacts from the latest pipeline instead, it should be available there!

## OpenRaster (ORA)
All project files in this repository are .ora files, the file format for [OpenRaster].

[OpenRaster] is an interchange format developed by the open-source community including the developers
of [GIMP] and [Krita]. It's an open format designed to be an alternative to the proprietary PSD file.

### Why are we using ORA?
* It's a patent free and open format with a [public specification].
* It's designed to be an interchange format, unlike PSD, or XCF which are internal structures.
* Widely backed by the open-source community, and is even the default format for MyPaint and Nathive.
* Supports layers and other project features that formats like PNG don't.
* Can be opened without specialized software, try opening it as a ZIP file and look inside!

### What if my drawing program doesn't support OpenRaster?
You can use something like [GIMP] or [Krita] to convert it to a format compatible with your drawing software first. When converting it back, be wary of
program specific features that may have been used to draw the image when trying to convert it back to OpenRaster,
you may have to rasterize or merge some layers.

## Emotes
### All Colors
![All Colors]

### All Emotes
![All Emotes]

[discord]: https://discord.gg/hprGMaM "Discord Invite"
[gitlab]: https://gitlab.com/Elypia/elypia-emotes/commits/master "Repository on GitLab"
[elypia-donate]: https://elypia.org/donate "Donate to Elypia"
[the contribution guide]: ./CONTRIBUTING.md "Contribute to the Elypia Emotes"
[here]: https://elypia.gitlab.io/elypia-emotes/emotes.zip "All Emotes Packaged"
[download]: https://gitlab.com/Elypia/elypia-emotes/-/jobs/artifacts/master/download?job=pages "Download Latest Pipeline"
[OpenRaster]: https://en.wikipedia.org/wiki/OpenRaster "OpenRaster on Wikipedia"
[GIMP]: https://www.gimp.org/ "GIMP"
[Krita]: https://krita.org/ "Krita"
[public specification]: https://www.freedesktop.org/wiki/Specifications/OpenRaster/ "Specification for OpenRaster"

[discord-members]: https://discordapp.com/api/guilds/184657525990359041/widget.png "Discord Shield"
[gitlab-build]: https://gitlab.com/Elypia/elypia-emotes/badges/master/pipeline.svg "GitLab Build Shield"
[donate-shield]: https://img.shields.io/badge/Elypia-Donate-blueviolet "Donate Shield"
[All Colors]: https://elypia.gitlab.io/elypia-emotes/colors.png "All Colors"
[All Emotes]: https://elypia.gitlab.io/elypia-emotes/emotes.png "All Unique Emotes"
