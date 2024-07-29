#!/usr/bin/env sh

if [ -z $USER ]
then # Termux
  pkg update

  pkg install python zsh eza neovim -y
else # Linux is Manual
  echo install python zsh eza and neovim
fi
