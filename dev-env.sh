#!/bin/bash


yes |sudo apt-get install neovim 

# Install ZSH & ohmyzsh 
yes | sudo apt-get install zsh  
yes sudo apt-get install curl | yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

yes |sudo apt-get install git


# Add basic setting 
echo "alias ..='cd ..' \n alias vi=nvim \n alias zcf='vi ~/.zshrc'  ">> ~/.zshrc 
