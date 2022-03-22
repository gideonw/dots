# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
HISTSIZE=500000
SAVEHIST=500000
setopt autocd
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY
bindkey -e
# End of lines configured by zsh-newuser-install

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Personal profile
source ~/.files/env.sh
source ~/.files/aliases.sh

# ZSH Plugins
export ZSH_PLUGIN_DIR="$HOME/.zsh/plugins"
source $ZSH_PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
source $ZSH_PLUGIN_DIR/oh-my-zsh/plugins/git/git.plugin.zsh
source $ZSH_PLUGIN_DIR/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGIN_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh
fpath=($ZSH_PLUGIN_DIR/zsh-completions/src $fpath)
source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugin Config
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=""
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=red,bold"

# The following lines were added by compinstall
zstyle :compinstall filename '/home/gideonw/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
