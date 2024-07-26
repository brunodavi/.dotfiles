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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

GCLOUD="$HOME/google-cloud-sdk/"

# The next line updates PATH for the Google Cloud SDK.
[ -f "$GCLOUD/path.zsh.inc" ] && . "$GCLOUD/path.zsh.inc"

# The next line enables shell command completion for gcloud.
[ -f "$GCLOUD/completion.zsh.inc" ] && . "$GCLOUD/completion.zsh.inc"
