#!/usr/bin/env bash

install_source() {
  sudo curl -fsSLo "${key}" "${url}/${gpg}"
  echo "deb [arch=${architecture} signed-by=${key}] ${url} stable main" | sudo tee "${src}" > /dev/null
}


architecture=`dpkg --print-architecture`

source_list='/etc/apt/sources.list.d'
keyring='/usr/share/keyrings'


# Github Cli

url="https://cli.github.com/packages"

gpg="githubcli-archive-keyring.gpg"
list="github-cli.list"

key="${keyrings}/${gpg}"
src="${source_list}/${list}"

install_source


# Brave Browser

url="https://brave-browser-apt-release.s3.brave.com"

gpg="brave-browser-archive-keyring.gpg"
list="brave-browser-release.list"

key="${keyrings}/${gpg}"
src="${source_list}/${list}"

install_source
