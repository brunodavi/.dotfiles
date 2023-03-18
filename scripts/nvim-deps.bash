# Dependência
python3 -m pip install neovim


# Cria o diretório do vim-plug
mkdir -p ~/.local/share/nvim/site/autoload/

# Instala o vim-plug
curl -sLo ~/.local/share/nvim/site/autoload/plug.vim \
  https://github.com/junegunn/vim-plug/raw/master/plug.vim \
  || exit 1

# Inicia o neovim com um comando para instalar
# todos os plugins e extensões
nvim '+PlugInstall'
