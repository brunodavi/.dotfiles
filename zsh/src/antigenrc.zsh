antigen use oh-my-zsh

# antigen bundle romkatv/zsh-defer
# antigen bundle hlissner/zsh-autopair
# antigen bundle anantkaul/zsh-completion-autogenerator

# antigen bundle zsh-users/zsh-completions
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-syntax-highlighting

plugins="`dirname ${0}`/plugins"

antigen bundles < ${plugins}/external.zsh
antigen bundles < ${plugins}/oh-my-zsh.zsh
antigen bundles < ${plugins}/zsh-users.zsh

antigen theme romkatv/powerlevel10k

antigen apply
