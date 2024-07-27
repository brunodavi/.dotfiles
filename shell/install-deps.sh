#!/usr/bin/env sh

# .termux
if [ -z $USER ]
then
  pkg update

  pkg install zsh

  pkg install eza
  pkg install bat

  pkg install neovim
  pkg install vim

  pkg install gh
else
  apt update

  sudo apt install zsh
  sudo apt install eza
  sudo apt install bat
fi
