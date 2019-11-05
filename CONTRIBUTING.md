# Contribution Guide
## About
This will be a short document about any expectations, standards, or information you should know before 
you try to commit your own work, and how to contribute to this project if you're new to using GitLab.
> None of this guide will show you how to use `git` specifically; just the GitLab UI and Web IDE.

## Conventions
### Files & Directories
| Directory  | Purpose                                                                    |
|------------|----------------------------------------------------------------------------|
| /emotes/   | Full quality emote.                                                        |
| /masks/    | Greyscale mask that represents what pixels to modulate when modifying hue. |
| /projects/ | Project files for each emote, this isn't required but is nice to have.     |
| LICENSE    | The license your contribution will be uploaded by, here's a [TL;DR].       |
> All other files in the directory are for documentation, or maintenance, you can ignore them
> if you're only planning to contribute artwork or make your own emotes using ours as a base.

### Naming Conventions and Guidelines
| Type       | Name             | Notes                                                                                                       |
|------------|------------------|-------------------------------------------------------------------------------------------------------------|
| Emotes     | pandaXyz.png     | `camel-case`, `png` - Minimum of 512x512, but should still look good at 64x64, preferably less.             |
| Masks      | pandaXyzMask.png | `camel-case`, `png` - Same size as emote. This isn't required if every pixel should be modulated on export. |
| Projects   | pandaXyz.psd     | `camel-case`, `psd`, `optional` - You can use any program, but the result must be a PSD file.               |
> Generic things have been written as `tags` instead of sentences.

## Adding Emotes
There are two ways to contribute to this repository:  
1. Draw something and just create an [issue] attaching your emote and asking for it to be added.
2. Create a fork and use the `Web IDE` feature to add and commit it yourself, and create a merge request. 

Using the Web IDE is recommended as it traces the commit back to you, allowing you to take credit and 
have your name/email listed in the [contributors] of the project, however if you're feeling 
lazy you can just attach your contribution as an issue and one of the maintainers will manually add it if they like it. 
> Feel free to join our [Discord] and ask someone for help if you end up getting a bit stuck!

<details>
    <summary><strong>Glossary</strong></summary>

Some terms used in this guide may not be friendly or obvious to people haven't used git before so here is a short key.

| Word         | Definition                                                                                                                                                                                                                           | Synonyms      |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| git          | Git is a version control system optimized for managing changes in files.                                                                                                                                                             |               |
| clone        | Downloading a copy of a project to either your own namespace or file system.                                                                                                                                                         |               |
| fork         | Cloning a project to your own namespace in order to make changes.                                                                                                                                                                    |               |
| branch       | A single version of the repository.                                                                                                                                                                                                  | version       |
| master       | The main version of the project, this is usually a stable and up-to-date branch which can include changes that haven't been released yet, others are _usually_ intended for development such as fixing an issue or adding a feature. |               |
| merge        | Pulling changes made from one branch into another branch.                                                                                                                                                                            |               |
| pull request | Requesting changes from your fork to be merged to a branch you don't have permission to merge to directly.                                                                                                                           | merge request |
| terminal     | A console where you can execute commands, this refers to whatever your computer has, for example, Command Prompt (cmd), PowerShell or Terminal).                                                                                     |               |

</details>

**You'll have to have a GitLab account before you can contribute.**

### GitLab Issue
Creating an issue is pretty simple, you just go to the original git repository, click
`Issues`, then press `New issue` at the top, fill out the information and upload the 
image, and click `Submit issue`. From there you just wait for someone to review it.

![Creating an Issue]

### GitLab Web IDE
The GitLab route involves a bit of extra navigation, forking a project, using the Web IDE to modify your 
repository and then making a merge request back to the main repository.

#### Forking the Project
The first step is to fork the project, this can be done via the GitLab website by just clicking the 
`Fork` button on the project home.

![Forking the Project]
> Notice how at first we're in the project under the Elypia namespace (`Elypia > Elypia Emotes`) 
but after the fork we're now in another namespace (`{YOUR_NAMESPACE} > Elypia Emotes`).  
Forking the project will clone the project to your namespace so that you can track your 
own copy of the repository.

#### Using the Web IDE
Once you have cloned the project, go to it on your namespace (your repositories) and 
you'll notice around the top right there is a `Web IDE` button, click it and you'll be 
taken to a text-editor like interface where you can upload and download files or write text.

You can just come here and upload any files you want, ideally this would be an emote, mask, 
and project file. The project file is favourable but not required, however a mask should 
be provided for each emote which dictated what parts change color and what doesn't.

#### Pull Request
Now that you've applied the changes to _your_ repository, you'll be able to make a pull 
request to the original branch under the Elypia namespace.

If you go to the elypia-emote repository under your namespace, you should see a message 
that you can do a pull request to the source branch.
If you don't see a message like that, you can go to the `Merge Requests` 
tab and click `Create merge request` manually.

Make sure the merge request says:  
`From {YOUR_NAMESPACE}/elypia-emotes:{YOUR_BRANCH} into Elypia/elypia-emotes:master`

If it matches the above then you're trying to merge to the right place, if not scroll 
down a little and set the `Target branch` `Elypia/elypia-emotes:master`.

This is also a good place to get your pull request a title and description so 
we have more information on what you changed and why!

After this just click `Submit merge request`, and you'll see it 
[here] for the repository maintainers to review.

[TL;DR]: https://tldrlegal.com/license/apache-license-2.0-(apache-2.0) "Apache License 2.0 TL;DR"
[issue]: https://gitlab.com/Elypia/elypia-emotes/issues "Elypia Emotes Issue Board"
[contributors]: https://gitlab.com/Elypia/elypia-emotes/graphs/master "Contributors Graph"
[Discord]: https://discord.gg/hprGMaM "Elypia on Discord"
[here]: https://gitlab.com/Elypia/elypia-emotes/merge_requests "Elypia Emotes Merge Requests"

[Creating an Issue]: ./assets/issue.gif "Creating an Issue"
[Forking the Project]: ./assets/fork_project.gif "Forking the Project"