# Contribution Guide
## About
This will be a short document about any expectations, standards, or information you should know before you try to commit your own work, and how to contribute to this project if you're new to using git or GitLab.

## Requirements
* In order to contribute you must have a GitLab account which you can make for free.
* Have [git](https://git-scm.com/) installed on your computer.
* (Optional) Have a git GUI tool such as [GitHub Desktop](https://desktop.github.com/) installed if you aren't a big fan of using the command line.

## Glossary
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
| CLI | Command Line Interface | |
| terminal | A console where you can execute commands, this refers to whatever your computer has for example: Command Prompt (cmd), PowerShell or Terminal). | |

### Contributing
You can install [git](https://git-scm.com/) and actually use it locally on your machine, for most of the installation you can just use the default settings, this guide will not cover what the settings mean as they aren't relevent to this repository but you're welcome to look information up online via [Google](https://www.google.com/) or [StackOverflow](https://stackoverflow.com/).

You'll know you have git installed correctly when you are able to do the command `git --version` in terminal and get a non-error response such as:
```sh
$ git --version 
git version 2.17.1
```

#### Forking the Project
The first step is to fork the project, this can be done via the GitLab website by just clicking the `Fork` button on the project home, this will clone the project to your personal namespace.

#### Cloning your Fork Locally
Once you have made your fork you need to do a command in order to `clone` the your new repository to your computer; make sure you're on **_your_** repository and look at for a clone button, then copy the URL.  
> It's simpler to use HTTPS but if you know what you're doing feel free to use SSH, don't just use SSH becasue you're a "cool kid" though.

```sh
git clone https://gitlab.com/{YOUR_NAME_SPACE}/elypia-emotes.git
```

This will download the repository to the location you specified in a `elypia-emotes` directory which you can now freely modify to your hearts content.

#### Commiting Changes
Once you have made the changes you wish to make, for example a change to an existing emote, or adding your own new emote, you need to add, commit and push the changes.

The easiest way to do this is to open a CMD/PowerShell/Terminal to your project directory and do the following commands.

```sh
git add .
```
> Tell git you want to add all changed files to be staged for commit.  

```sh
git commit -m "{COMMIT_MESSAGE}"
```
> Commit the changes to your local repository on your computer with the message you set, replace `{COMMIT_MESSAGE}` with a message that represents the changes in this commit.

```sh
git push origin/master
```
> Push the changes to your repository on GitLab so they are available in your fork of the elypia-emote repository.


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
