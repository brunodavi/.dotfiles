#!/usr/bin/env sh

# .termux
if [ -z $USER ]
then
  pkg update

  pkg install zsh eza bat neovim vim gh -y
else
  apt update

  sudo apt install zsh -y
  sudo apt install eza -y
  sudo apt install bat -y
fi
