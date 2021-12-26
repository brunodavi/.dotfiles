antigen use oh-my-zsh

antigen bundle romkatv/zsh-defer
antigen bundle hlissner/zsh-autopair

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundles <<EOBUNDLES
# Aliases
    aliases
    alias-finder
    common-aliases

# Plugins
    command-not-found
    colored-man-pages
    universalarchive
    frontend-search
    alias-finder
    systemadmin
    magic-enter
    web-search
    jsontools
    urltools
    term_tab
    bgnotify
    colorize
    mix-fast
    dircycle
    encode64
    transfer
    extract
    dotenv
    screen
    node
    nmap
    jump
    pip

# Completions

## Git
    git
    gitfast
    gitignore
    git-extras

## Programms
    gh
    heroku
    httpie

## Bild
    compleat
EOBUNDLES

antigen theme romkatv/powerlevel10k

antigen apply
