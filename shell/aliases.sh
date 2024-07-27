# cmd_exists_then_alias()
cxta() {
  command -v "$1" > /dev/null && alias "$2"="$3"
}


shell="${HOME}/.dotfiles/shell"

alias dotrepo='git submodule add'

alias restart="exec ${ZSH_NAME:-bash}"

alias envrc="${EDITOR} ~/.dotfiles/shell/env.sh"
alias zshrc="${EDITOR} ~/.zshrc"
alias bashrc="${EDITOR} ~/.bashrc"

alias funcs="${EDITOR} ${shell}/funcs.sh"
alias aliases="${EDITOR} ${shell}/aliases.sh"

alias nv="nvim"
alias ec='echo'
alias rf='rm -rf'


cxta eza ls 'eza \
	-F always \
	--icons \
	--group-directories-first \
	--sort Extension'

alias la='ls -a'
alias l1='ls -1'

alias ll='la -l --no-user'
alias l='ll --no-time --no-filesize'

alias lst='ls --tree'
alias lat='la --tree'

alias cdb='cd-bookmark'

# cxta rich pager 'rich \
#   --pager \
#   --guides \
#   --emoji \
#   --expand \
#   --hyperlinks \
#   --line-numbers \
#   --panel square \
#   --theme one-dark \
#   --caption main.py \
#   --panel-style grey50 \
# '


cxta batcexa bat 'batcat'
