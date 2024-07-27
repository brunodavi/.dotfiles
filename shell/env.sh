export EDITOR=nvim

export PATH="${PATH}:${HOME}/.local/bin"

shell=$(basename $SHELL)
eval "$(mise activate $shell)"
