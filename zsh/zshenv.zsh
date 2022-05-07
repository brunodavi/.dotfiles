if [ -z "${USER}" ]
then
  bin="bin"
else
  bin=".local/bin"
fi

SOCKET="${HOME}/.config/nvim/.socket"
fpath+=~/.zsh/src/completions

export PATH=${PATH}:${HOME}/${bin}
export EDITOR=nvim

export NVM_DIR="${HOME}/.nvm"
