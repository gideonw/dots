#  Configure zsh
HISTFILE=~/.zsh/.histfile
HISTSIZE=500000
SAVEHIST=500000
setopt autocd
setopt appendhistory
setopt INC_APPEND_HISTORY  
setopt SHARE_HISTORY
bindkey -e


# source plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ZSH Plugins
# export ZSH_PLUGIN_DIR="$HOME/.zsh/plugins"
# source $ZSH_PLUGIN_DIR/powerlevel10k/powerlevel10k.zsh-theme
# source $ZSH_PLUGIN_DIR/oh-my-zsh/plugins/git/git.plugin.zsh
# source $ZSH_PLUGIN_DIR/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh
# source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source $ZSH_PLUGIN_DIR/zsh-history-substring-search/zsh-history-substring-search.zsh
# fpath=($ZSH_PLUGIN_DIR/zsh-completions/src $fpath)
# source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh

# # Plugin Config
# bindkey "$terminfo[kcuu1]" history-substring-search-up
# bindkey "$terminfo[kcud1]" history-substring-search-down
# export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND=""
# export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND="bg=red,bold"

