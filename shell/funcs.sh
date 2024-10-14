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

b64() {
  args="${@:-`cat`}"
  echo "${args}" | base64
}

d64() {
  args="${@:-`cat`}"
  echo "${args}" | base64 -d
}


copy() {
  args="${@:-`cat`}"

  echo "${args}" | clipcopy 2> /dev/null \
      || termux-clipboard-set "${args}"
}

paste() {
  clippaste
}

filetype() {
  file --mime-type -b "${1}"
}

open() {
  args=(${@:-`cat`})
  file_source="`realpath ${args[1]}`"
  mime_type=`filetype "${file_source}"`

  xdg-open ${file_source}
}

open_folder() {
  args=(${@:-`cat`})

  am start \
    -t 'resource/folder' \
    -d "$(realpath ${args[1]})"
}

line() {
  sed "${1}!d" "${2}"
}

sedn() {
  sed ':a;N;$!h;'$@
}

on_finish() {
  process="${@}"
  process_formatted="` \
    grep -Eom 1 '.{1,25}' <<< "${process}"`..."

  run_toast() {
    n=$'\n\n'
    termux-toast "${1}${n}${process_formatted}"
  }

  bash <<< "${process}" \
    && run_toast 'Success:' \
    || run_toast 'Error:'
}
