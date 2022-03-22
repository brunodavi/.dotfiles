shell="${HOME}/.dotfiles/shell"

up_funcs() {
  source ${shell}/funcs.sh
}

up_aliases() {
  source ${shell}/aliases.sh
}

up_all() {
  up_funcs
  up_aliases
}


ternary() {
  case $1 in
    ''|false|FALSE|null|NULL|0)
      echo "$3"
      ;;

    *)
      echo "$2"
      ;;
  esac
}


copy() {
  args=${@:-`cat`}

  echo "${args}" | clipcopy 2> /dev/null \
      || termux-clipboard-set ${args}
}

paste() {
  clippaste
}
