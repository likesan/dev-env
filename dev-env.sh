#!/bin/bash
# Install ZSH & ohmyzsh 

sudo apt-get install zsh && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# Add basic setting 
echo "alias ..='cd ..' \n alias vi=nvim \n alias zcf='vi ~/.zshrc'  ">> ~/.zshrc 
