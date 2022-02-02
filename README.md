# dunc's dotfiles

Until 23rd Dec 2021, this was a private repository containing dotfiles I've used with my Debian 11 laptop for about a year.

By trade I'm a DevOps Engineer, working with Azure, AWS, Kubernetes, Docker, Helm and Terraform - the usual stack. Professionally I've focused on using Linux as my daily driver but I'm starting a new role in January, and I'll be moving to Mac. Over the past couple of weeks I've been working on my dotfiles to allow me to transition as seamlessly as possible.

During this process I've found other people's dotfile repositories really useful, so I thought I'd take the opportunity to open mine up on Github. Hopefully something contained within these files will prove useful to someone!

## Configuring MacOS to be like Linux with i3
In a different repo, I have actually tried to configure my Mac to work in exactly the same way as my Linux i3 setup. For this I used Yabai and SKHD.

It... kinda worked, but mostly didn't. Firstly, system-wide keyboard shortcuts are plentiful in MacOS by default and they often interfere with the bindings I would use in i3. Secondly, there is no "unused" key (like the Winkey on a Linux device) which is perfect for a command key.

Finally, I found everything on MacOS to be so much slower than the Linux equivalent that it just felt totally pointless. Hitting Win+Enter to bring up a Terminal window is practically instant on Linux, whereas even with a single instance of Kitty on MacOS there would sometimes be a noticeable delay.

Instead I'm now using Raycast, and a bit of SKHD, and trying to use the work Mac more like an actual Mac.

## Caveat

It's important to note that because of a few hardcoded paths, a private SSH submodule and device-specific builds in the Linux dotfiles, it's unlikely that following the installation instructions will work as expected.

However, if you had a totally fresh setup and just wanted to get up and running with Zsh and Neovim, you could amend the OS profiles found in `meta/profiles` to remove any of the "personal" stuff (e.g. the `ssh` config).

## Applications and configuration

The entire repository is managed by [Dotbot](https://github.com/anishathalye/dotbot) which is a great Python-based tool allowing us to set up symlinks between this repository and each dotfile's required location.

Everything uses a similar theme, primarily based around [Dracula](https://github.com/dracula/dracula-theme).

#### Linux

 - [i3 window manager](https://i3wm.org/)
 - [Polybar](https://github.com/polybar/polybar)
 - [Rofi application launcher](https://github.com/davatorium/rofi)
 - Zsh with [zsh-quickstart-kit](https://github.com/unixorn/zsh-quickstart-kit) (uses Zgenom and Oh My Zsh!)
 - Neovim with configuration generated by [vim-bootstrap](https://vim-bootstrap.com/)

#### Mac

 - Zsh with zsh-quickstart-kit
 - Neovim
 - [iTerm2](https://iterm2.com/) terminal emulator
 - [skhd](https://github.com/koekeishiya/skhd) for device-wide keyboard shortcuts

## Installation

### Mac
 1. Install Brew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
 2. Clone this repo into a hidden directory in your home directory by running, for example, `git clone https://github.com/duncz/dotfiles.git ~/.dotfiles`
 3. `cd` into the repository directory and run `git submodule update --init --recursive`
 4. Run `./install mac`
 5. Install the iTerm configuration from `iterm` folder (Preferences -> General and Profiles -> Import)

### Linux
Tested on Debian 11

 1. Install Git: `sudo apt update && sudo apt-get install git`
 2. Clone this repo into a hidden directory in your home directory by running, for example, `git clone https://github.com/duncz/dotfiles.git ~/.dotfiles`
 3. `cd` into the repository directory and run `git submodule update --init --recursive`
 4. Ensure that your `python` command returns version 3. If not, run `sudo apt-get install python-is-python3`
 5. Run `./install linux`

## Modifications

 - Each application has its own Dotbot configuration in `meta/configs`. Modify these files, or create your own.
 - Update an OS profile in `meta/profiles` by adding or removing the base name of a `meta/configs` `.yaml` file, e.g. `meta/configs/brew.yaml` simply becomes `brew` in `meta/profiles/mac`.
 - If a config requires a plugin, add a `git submodule` for the plugin and then specify the directory in the `profiles` file, e.g. `brew:.dotbot-brew`. For multiple plugins, use multiple delimiters, e.g. `brew:.dotbot-brew:.dotbot-pip`

## Troubleshooting

 - If Zsh starts playing up, e.g. prompt changes, try deleting the `.zgenom` folder

## CHANGELOG

See commits.

## TODO

Quite a few applications are missing from Linux because they're not installed with `apt` and I haven't had time to scrape through my history to find how they were installed. Off the top of my head...

 - kubectl
 - helm
 - terraform

Also need to find all snap-installed applications and create a config for that.
