if [ -z "${USER}" ]
then
  bin="bin"
else
  bin=".local/bin"
fi

export PATH=${PATH}:${HOME}/${bin}
export NVIM="$HOME/.config/nvim"
export EDITOR=nvim
