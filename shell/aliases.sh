src="$HOME/.dotfiles/shell"

alias restart="exec ${ZSH_NAME:-bash}"

alias zshrc="${EDITOR} ~/.zshrc"
alias bashrc="${EDITOR} ~/.bashrc"

alias funcs="${EDITOR} ${src}/funcs.sh"
alias aliases="${EDITOR} ${src}/aliases.sh"


alias dotrepo='git submodule add'

alias ls='lsd -XFv --group-dirs=first'

alias nv='nvim'

alias rf='rm -rf'

alias glow='glow -p'

alias cdb='cd-bookmark'


alias sys='sudo systemctl'

alias sys_status='sys status'
alias sys_start='sys start'
alias sys_stop='sys stop'

alias sql_status='sys_status mysql'
alias sql_start='sys_start mysql'
alias sql_stop='sys_stop mysql'

alias mon_status='sys_status mongod'
alias mon_start='sys_start mongod'
alias mon_stop='sys_stop mongod'


[ ${ZSH_NAME} ] && unalias cp mv rm
