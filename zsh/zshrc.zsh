an="$HOME/.zsh/src/antigen.zsh"
 
if [ ! -e ${an} ]; then
  curl -L git.io/antigen-nightly > ${an}
fi

POWERLEVEL9K_DISABLE_GITSTATUS=true
source <(cat ~/.zsh/src/*)


zshusers=(
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)


antigen use oh-my-zsh

anplug romkatv zsh-defer
anplug hlissner zsh-autopair

anplug zsh-users ${zshusers[@]}

antigen theme romkatv/powerlevel10k

antigen apply
