anplug() {
  for plugin in ${@:2}
  do
    antigen bundle "$1/$plugin"
  done
}
