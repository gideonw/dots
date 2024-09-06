#! /bin/bash

if [ -d ~/dots ]; then
  cd ~/dots && git pull
else
  git clone git@github.com:gideonw/dots.git ~/dots
fi

#  Link all the files

ln -s ~/dots/.files/env.sh ~/.files/env.sh
ln -s ~/dots/.files/aliases.sh ~/.files/aliases.sh
ln -s ~/dots/.files/zsh-config.sh ~/.files/zsh-config.sh

# download plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

# install powerlevel 10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# Install p10k.sh
if [ -f ~/.p10k.sh ]; then
  mv ~/.p10k.sh ~/.p10k.sh_bak
fi

ln -s ~/dots/.p10k.sh ~/.p10k.sh

# Install zshrc
if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc_bak
fi

ln -s ~/dots/.zshrc ~/.zshrc
