#  Configure zsh
export HISTFILE=~/.zsh/.hist_zsh
export HISTSIZE=5000000
export SAVEHIST=$HISTSIZE

# HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt APPEND_HISTORY  
setopt SHARE_HISTORY             # Share history between all sessions.
# END HISTORY

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

