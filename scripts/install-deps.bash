#!/usr/bin/env bash

linux=(
  zsh
  git
  curl
  python3
  python3-pip
)

termux=(
  gh
  bat
  exa
  man
  zsh
  git
  curl
  python3
  nodejs-lts
)

installer() {
  apt update
  apt install "${@}"
}

if [ -z "$USER" ]
  then
    installer ${termux[@]}
  else
    installer ${linux[@]}
fi
