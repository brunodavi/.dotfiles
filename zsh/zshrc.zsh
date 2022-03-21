src="$HOME/.zsh/src"
an="$src/antigen.zsh"
 
if [ ! -e ${an} ]; then
  echo "Installing antigen-nightly..."
  curl -sL git.io/antigen-nightly > ${an}
  echo
fi

source "$src/antigen.zsh"
source "$src/ohmyzsh.zsh"
source "$src/p10k.zsh"

POWERLEVEL9K_DISABLE_GITSTATUS=true

antigen init "$src/antigenrc.zsh"

source "$src/funcs.zsh"
source "$src/aliases.zsh"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
