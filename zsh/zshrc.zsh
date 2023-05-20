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

antigen init "$src/antigenrc.zsh"

source "$src/funcs.zsh"
source "$src/aliases.zsh"

return 0
