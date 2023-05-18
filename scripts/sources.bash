#!/usr/bin/env bash


set -e

prompt_y_n() {
  read -p "$1" choice
  choice=${choice,,}

  [[ -z $choice ]] && choice='y'

  [[ $choice == 'y' || $choice == 'yes' ]]
}

install_source() {
  if prompt_y_n "Install ${name} [Y/n]: "
  then
    sudo curl -fsSLo "${key}" "${url}/${gpg}"
    echo "deb [arch=${architecture} signed-by=${key}] ${url} stable main" | sudo tee "${src}" > /dev/null

    exit 0
  fi

  exit 1
}


architecture=`dpkg --print-architecture`

source_list='/etc/apt/sources.list.d'
keyring='/usr/share/keyrings'


name="Github Cli (gh)"

url="https://cli.github.com/packages"

gpg="githubcli-archive-keyring.gpg"
list="github-cli.list"

key="${keyrings}/${gpg}"
src="${source_list}/${list}"

install_source
