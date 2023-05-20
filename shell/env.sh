export EDITOR=nvim

export PATH="${PATH}:${HOME}/bin"
export PATH="${PATH}:${HOME}/.local/bin"

export NVM_DIR="${HOME}/.nvm"


[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
