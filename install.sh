
#! /bin/bash

did_something=false

sudo xbps-install xorg xtools vim base-devel libX11-devel libXft-devel libXinerama-devel pulseaudio pavucontrol firefox xrandr autorandr arandr lxappearance && did_something=true

cp -f .bashrc ~
cp -f .xinitrc ~
cp -fr .config ~ #french stuff

echo 
for sltool in dwm dmenu st; do
	cd $sltool
	rename git .git git && sudo make clean install && echo "  -> Installed $sltool" && did_something=true || echo "  -> $sltool was already installed; ignoring"
	cd ..
done

if [ "$did_something" = true ]; then
	echo "Successfully installed!"
else
	echo "Dotfiles were already installed"
fi

echo 
read -p "Would u also like to clone the void source package repo to the home directory? [y/n]" install_repo
if [ "$install_repo" = y ]; then
	dir=$(pwd)
	if [ -d ~/void-packages ]; then
		echo "Repo already exists, nothing changed"
	else
		cd ~ && git clone https://github.com/void-linux/void-packages.git --depth=1
		echo "Done! See ~/void-packages"
	fi
	cd $dir
elif [ "$install_repo" = n ]; then 
	echo "K! Did nothing, js the install"
else 
	echo "What??? nvm forget it"
fi


echo "Setup completed!"
