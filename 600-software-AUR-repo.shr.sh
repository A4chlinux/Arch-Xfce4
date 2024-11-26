#!/bin/bash
#set -e


git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg
sudo pacman -U yay-bin*.zst --noconfirm
cd ..
sudo rm -r yay-bin

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	yay -S --noconfirm $1
    fi
}

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}


tput setaf 2
echo "##################################################################################"
echo "###################                   DONE                    ####################"
echo "##################################################################################"
tput sgr0

###############################################################################

func_category Icons

list=(
sardi-icons
surfn-icons-git
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Icons

list=(
oh-my-zsh-git
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

cp -r /usr/share/oh-my-zsh ~/.oh-my-zsh
cp -r Personal/theme/parrot.zsh-theme ~/.oh-my-zsh/themes
sudo chsh $USER -s /bin/zsh
###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0