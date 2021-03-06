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

  xdg-open --content-type="${mime_type}" ${file_source}
}

open_folder() {
  args=(${@:-`cat`})

  am start \
    -t 'resource/folder' \
    -d `realpath ${args[1]}`
}

line() {
  sed "${1}!d" "${2}"
}

sedn() {
  sed ':a;N;$!h;'$@
}

cp_ag() {
  for old_file in `ag -l '^' -G "$1"`
  do
    new_file=`echo ${old_file} | sed "s|$2|$3|g"`
    cp ${old_file} ${new_file}

    sed -i "s|$2|$3|g" ${new_file}
  done
}
