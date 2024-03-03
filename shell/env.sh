export EDITOR=nvim

export PATH="${PATH}:${HOME}/.local/bin"
export PATH="${PATH}:${HOME}/.pyenv/bin"

export FLYCTL_INSTALL="/home/brunodavi/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export NVM_DIR="${HOME}/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"

command -v pyenv >/dev/null && eval "$(pyenv init -)"
