#!/bin/bash

title() {
    frame=${#1}
    printf "\n" && printf "~%.0s" $(seq $frame)
    printf "\n$1\n"
    printf "~%.0s" $(seq $frame) && printf "\n\n"
    sleep 1
}

title "| UPDATING |"
sudo apt update
sudo apt full-upgrade -y

title "| INSTALLING SOFTWARE |"
sudo apt install tmux vim htop gparted firefox vlc libreoffice -y

title "| CONFIGURING DIRECTORIES |"
mkdir -p ~/nik4nd/GitHub ~/nik4nd/Scripts
chmod u+x uc.sh
mv uc.sh ~/nik4nd/Scripts/

title "| CONFIGURING TMUX |"
mv .tmux.conf ~/

title "| CONFIGURING VIM |"
mkdir -p ~/.vim/colors
mv OceanicNext.vim ~/.vim/colors/
mv .vimrc ~/

title "| CONFIGURING GIT |"
git config --global core.editor "vim"
git config --global user.email "nik4nd@gmail.com"
git config --global user.name "nik4nd"
