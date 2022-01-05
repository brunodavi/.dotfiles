src=`dirname ${0}`

alias aliases="${EDITOR} ${0}"

alias funcs="${EDITOR} ${src}/funcs.zsh"
alias plugins="${EDITOR} ${src}/plugins"
alias antigenrc="${EDITOR} ${src}/antigenrc.zsh"


alias dotrepo='git submodule add --depth 1'

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
