# PATH additions
export PATH=$PATH:"/usr/local/go/bin"
export PATH=$PATH:"/mnt/c/Program Files/Microsoft VS Code Insiders/bin"
export PATH=$PATH:"$HOME/go/bin"
export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"$HOME/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH=$PATH:$HOME/.linkerd2/bin
export PATH="$HOME/.tfenv/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# Windows/WSL Shared Cert
export CAROOT=/mnt/c/Users/Gideon/AppData/Local/mkcert

# golang
export GO111MODULE=on

# General Updates
export EDITOR=vim

# Setup the directory stack
export DIRSTACKSIZE=8
setopt autopushd pushdminus pushdsilent pushdtohome

# LESS man page colors ------------------- From: [Thayler Williams]
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
