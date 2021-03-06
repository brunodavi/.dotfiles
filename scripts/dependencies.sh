linux=(
  gh
  zsh
  git
  curl
  nodejs
  python3
  python3-pip
  python3-venv
  brave-browser
  apt-transport-https
)

termux=(
  fd
  gh
  lsd
  man
  zsh
  git
  curl
  glow
  python3
  nodejs-lts
)

check_command() {
  dpkg -s ${1} &> /dev/null
}

start_install() {
  apt update
  apt install "${@}"
}

installer() {
  for program in "${@}"
  do
    if ! check_command "${program}"
    then
      start_install "${@}"
      exit
    fi
  done

  echo "Already installed"
}

if [ -z "$USER" ]
  then
    installer ${termux[@]}
  else
    installer ${linux[@]}
fi
