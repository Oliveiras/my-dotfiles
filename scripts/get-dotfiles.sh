#!/bin/sh

curl -fLso ~/.bashrc https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.bashrc
curl -fLso ~/.bash_aliases https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.bash_aliases
curl -fLso ~/.bash_functions https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.bash_functions
curl -fLso ~/.inputrc https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.inputrc
curl -fLso ~/.vimrc https://raw.githubusercontent.com/Oliveiras/my-dotfiles/master/.vimrc

. ~/.bashrc

