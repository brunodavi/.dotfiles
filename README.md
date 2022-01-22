# .dotfiles

Criei esse repositório para deixar as minhas configurações iniciais
do terminal tanto no Linux ou Android (termux)

> Usei o dotbot criação do @anishathalye pois achei que foi o
> mais fácil de se para organizar e tive a maior liberdade
> para personalizar

## Inicio Rápido

```bash
# Use apenas se tiver no linux

curl -sL \
  raw.githubusercontent.com/brunodavi/.dotfiles/master/scripts/sources.sh | bash

```

```bash
# Instala o Github Cli
apt update
apt install gh

# Loga no Github Cli
gh auth login

# Clona esse repositório
gh repo clone brunodavi/.dotfiles

# Instala as Dependências
./scripts/dependencies.sh

# Mapeia os .dotfiles
./install

```
