funcs() {
  vi ${0}
}

antiadd() {
  antigen bundle ${1} && echo "${1}" >> ~/.zsh/src/plugins/external.zsh
}
