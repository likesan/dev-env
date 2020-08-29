#!/bin/bash

cmd=$1

function ide()
{

	echo "install shell setting"
	sudo apt-get install neovim 
	sudo apt-get install zsh  
	sudo apt-get install curl | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	tail ./zshrc > cat > ./zshrc
}

function git-init()
{

	echo "install git setting"
	sudo apt-get install git
	git config --global user.email "sj-log@gmail.com"
	git config --global user.name "sj-log"
	git config --global credential.helper store
}

function blog()
{
	
	echo "install kakao hugo blog"
	cd ~/coding
	git clone https://github.com/sj-log/hugo-blog
}

function katalk()
{
	echo "install kakaotalk" &&
	git clone https://github.com/jeonghanlee/kakaotalk-env ||
	sudo dpkg --add-architecture i386 && yes | sudo apt-get update && sudo apt-get install wine wine32 winbind fonts-nanum fonts-nanum-coding fonts-nanum-eco fonts-nanum-extra make &&
	winecfg && 
	cd ~/coding/kakaotalk-env && make get && make conf && make install
}

case "$cmd" 
in 
	ide)
		ide
		;;
	git-init)
		git-init
		;;
	blog)
		blog
		;;
	katalk)
		katalk
		;;
	*)

		echo "$1 typed";
		exit 2
esac



