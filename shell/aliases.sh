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


alias ls='exa \
  -Fh \
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

alias pager='rich \
  --pager \
  --guides \
  --emoji \
  --expand \
  --hyperlinks \
  --line-numbers \
  --panel square \
  --theme one-dark \
  --caption main.py \
  --panel-style grey50 \
'

[ ${ZSH_NAME} ] && unalias cp mv rm 2> /dev/null

return 0
