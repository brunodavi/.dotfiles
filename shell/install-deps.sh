#!/usr/bin/env sh

if [ -z $USER ]
then # Termux
  pkg update

  pkg install python zsh eza bat neovim -y

else # Linux
  apt update

  # Dependences
  sudo apt install zsh -y
  sudo apt install eza -y

  ## Neovim
  sudo apt-get install software-properties-common -y
  sudo apt-get install python-software-properties -y

  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install neovim -y
fi
