<<<<<<< HEAD
# Dotfiles

Bashs not my thing btw. Just wrote this to procrastinate. Physics exam tomorrow...


## Usage
- super + shift + enter to spawn st terminal emulator
- super + q to kill window

## Installation
1. Install voidlinux musl base image and install it like documented
2. login to ur personal account and clone this repo using 'git clone' and cd into the newly created directory
3. run: ln -s .bashrc ~
4. install dependencies and other stuff: sudo xbps-install xtools vim base-devel libX11-devel libXft-devel libXinerama-devel
5. cd into the st, dwm, and dmenu dir and in each rename the git folder to .git, run git pull, and then sudo make clean install
6. cd back to the dotfiles repo and run: ln -s .config ~

### Optional
- Setup autologin to graphical interface as shown in the void documentations: lookup voidlinux Automatic Login to Graphical Environmenti
=======
# dotfiles
My dotfiles for voidlinux
>>>>>>> be7627e48b52238961ffc7a16cebc21b7a0bc679
