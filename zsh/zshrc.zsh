src="$HOME/.zsh/src"
an="$src/antigen.zsh"
 
if [ ! -e ${an} ]; then
  curl -L git.io/antigen-nightly > ${an}
fi

source "$src/antigen.zsh"
source "$src/ohmyzsh.zsh"
source "$src/p10k.zsh"

POWERLEVEL9K_DISABLE_GITSTATUS=true

antigen init "$src/antigenrc.zsh"
source "$src/functions.zsh"
source "$src/aliases.zsh"
