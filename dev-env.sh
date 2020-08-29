#!/bin/sh

ide(){
yes |sudo apt-get install neovim 

# Install ZSH & ohmyzsh 
yes | sudo apt-get install zsh  
yes sudo apt-get install curl | yes | sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
tail ./zshrc > cat > ./zshrc
}

git(){
yes |sudo apt-get install git
git config --global user.email "sj-log@gmail.com"
git config --global user.name "sj-log"
git config --global credential.helper store
}

blog(){
cd ~/coding
git clone https://github.com/sj-log/hugo-blog
}

# Add basic setting 
echo "alias ..='cd ..' \n alias vi=nvim \n alias zcf='vi ~/.zshrc'  ">> ~/.zshrc 
