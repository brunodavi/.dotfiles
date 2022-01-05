src="$HOME/.zsh/src"
an="$src/antigen.zsh"
 
if [ ! -e ${an} ]; then
  echo "[ Antigen ] Installing..."
  curl -qL git.io/antigen-nightly > ${an}
  echo
fi

source "$src/antigen.zsh"
source "$src/ohmyzsh.zsh"
source "$src/p10k.zsh"

POWERLEVEL9K_DISABLE_GITSTATUS=true

antigen init "$src/antigenrc.zsh"

source "$src/funcs.zsh"
source "$src/aliases.zsh"
