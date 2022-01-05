antigen use oh-my-zsh

plugins="`dirname ${0}`/plugins"

antigen bundles < ${plugins}/external.zsh
antigen bundles < ${plugins}/oh-my-zsh.zsh
antigen bundles < ${plugins}/zsh-users.zsh

antigen theme romkatv/powerlevel10k

antigen apply
