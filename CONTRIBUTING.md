# Contribution Guide
## About
This will be a short document about how to contribute to this project if you're unfamiliar with git / GitLab, and any expectations, standards, or information you should know before you try to commit your own work.

There is a [TL;DR](#tldr) and [Advance](#advance) tutorial:  
> **TL;DR**: Is good for people who just want to upload the art and be done with it.  

> **Advance**: Is good for people who want to actually understand what is happening on their screen and more ways to contribute that may suit your work style better, for example if you contribute frequently or in bulk.

## Requirements
* In order to contribute you must have a GitLab account which you can make for free.

## TL;DR
This will basically give you some images to follow and quickly get your contribution uploaded to our repo and assumes you only intend to upload one emote at a time.

TODO: INSERT SHIT HERE

## Advance

<details>
    <summary>Open this if you're brave enough...</summary>

### Key
Some of the terms used in this guide may not be friendly or obvious to people that aren't developers or don't use git often so here is a short key.
| Word | Definition | Synonyms |
|------|------------|----------|
| git  | Git is a version control system optimised for managing changes in files. | |
| clone | Downloading a copy of a project to either your own namespace or filesystem. | |
| fork | Cloning a project to your own namespace in order to make changes. | |
| branch | A single version of the repository. | version |
| master | The main version of the project, this is usually the most stable and up-to-date branch, others are _usually_ intended for development such as fixing an issue or adding a feature. | |
| merge | Pulling changes made from one branch into another branch. | |
| pull request | Requesting changes from your fork to be merged to a branch you don't have permission to merge to directly. | merge request |


### Pull Requests
There are multiple way to do a pull request with GitLab, this will just cover some of the methods you can take.

### **`+`** Button
This approach is by far the simplest, but it's drawback is you can only upload one file/directory at a time with and it's inconvient to get it placed in the correct directory.

The **`+`** button will automatically fork the project to your own namespace which you can then push and pull changes as much as you want from your version of the repostiory until you're ready to do the pull request.

Once your file is comitted you'll be able taken to the pull request page where you can give a name, and description for your change and click `Submit merge request` when you're ready. 

You're merge request will be visible [here](https://gitlab.com/Elypia/elypia-emotes/), it will either be merged by a repository maintainer or discussion may take place below if it's either not desired or changes are requested prior to merge.

### CLI (Command Line Interface)
This is by far the best way to contribute if you want to use git normaly and want optimal control while you commit, there are also tools out there to help you work with git better but we'll only use the command line.

You can install [git](https://git-scm.com/) and actually use it locally on your machine, for most of the installation you can just use the default settings, this guide will not cover what the settings mean as they aren't relevent to this repository but you're welcome to look information up online via [Google](https://www.google.com/) or [StackOverflow](https://stackoverflow.com/).

You'll know you have git installed correctly when you are able to do the command `git --version` in CMD/PowerShell/Terminal and get a non-error response such as:
```sh
$ git --version 
git version 2.17.1
```

#### Forking the Project
The first step is to fork the project, this can be done via the GitLab website by just clicking the `Fork` button on the project home.

#### Cloning your Fork Locally
Once you have made your fork you need to a command on your computer in order to `clone` the new repository to your computer, go to your fork of the project and look at for a clone button, and clone it, it's simpler to use HTTPS but if you know what you're doing feel free to use SSH.

```sh
git clone https://gitlab.com/{YOUR_NAME_SPACE}/elypia-emotes.git
```

This will download the repository to the location you specified in a `elypia-emotes` directory which you can now freely modify to your hearts content.

#### Commiting Changes
Once you have made the changes you wish to make, for example a change to an existing emote, or adding your own new emote, you need to add, commit and push the changes.

The easiest way to do this is to open a CMD/PowerShell/Terminal to your project directory and do the following commands.

```sh
git add .
git commit -m "Added angryPanda emote!"
git push origin/master
```

1. What this does is tell git you want to add all changed files to be stages for commit.  
2. Commit the changes to your local repository on your computer with the message you set.
3. Push the changes to your repository on GitLab so they are available online.

#### Pull Request
Now that you're changes are online and with GitLab, you'll able to make a pull request to the original branch under the Elypia namespace.

If you go to the elypia-emote repository under your namespace, you should see a message that you can do a pull request to the source branch (this refers to the original [Elypia/elypia-emote](https://gitlab.com/Elypia/elypia-emotes/) branch you cloned from.)  
If you don't see a message like that, you can go to the `Merge Requests` tab and click `Create merge request` manually.

Make sure the merge request says:  
`From {YOUR_NAMESPACE}/elypia-emotes:{YOUR_BRANCH} into Elypia/elypia-emotes:master`

If it matches the above then you're trying to merge to the right place, if not scroll down a little and set the `Target branch` `Elypia/elypia-emotes` and `master`.

This is also a good place to get your pull request a title and description so we have more information on what you changed and why!

After this just click `Submit merge request`, and you'll see it [here](https://gitlab.com/Elypia/elypia-emotes/) for the repository maintainers to review.
</details>
