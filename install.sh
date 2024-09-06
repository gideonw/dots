#! /bin/bash

if [ -d ~/dots ]; then
  cd ~/dots && git pull
else
  git clone git@github.com:gideonw/dots.git ~/dots
fi

#  Link all the files
if [ -f ~/.files/env.sh ]; then
  mv ~/.files/env.sh ~/.files/env.sh_bak${`date -Iminutes`}
fi
ln -s ~/dots/.files/env.sh ~/.files/env.sh

if [ -f ~/.files/aliases.sh ]; then
  mv ~/.files/aliases.sh ~/.files/aliases.sh_bak${`date -Iminutes`}
fi
ln -s ~/dots/.files/aliases.sh ~/.files/aliases.sh

if [ -f ~/.files/zsh-config.sh ]; then
  mv ~/.files/zsh-config.sh ~/.files/zsh-config.sh_bak${`date -Iminutes`}
fi
ln -s ~/dots/.files/zsh-config.sh ~/.files/zsh-config.sh

# download plugins
if [ -d ~/.zsh/zsh-autosuggestions ]; then
  echo "zsh-users/zsh-autosuggestions already installed..."
else
  git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
fi
if [ -d ~/.zsh/zsh-history-substring-search ]; then
  echo "zsh-users/zsh-history-substring-search already installed..."
else
  git clone --depth=1 https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/zsh-history-substring-search
fi
if [ -d ~/.zsh/zsh-syntax-highlighting ]; then
  echo "zsh-users/zsh-syntax-highlighting already installed..."
else
  git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
fi


# install powerlevel 10k
if [ -d ~/powerlevel10k ]; then
  echo "powerlevel10k already installed..."
else
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
fi

# Install p10k.sh
if [ -f ~/.p10k.sh ]; then
  mv ~/.p10k.sh ~/.p10k.sh_bak${`date -Iminutes`}
fi
ln -s ~/dots/.p10k.sh ~/.p10k.sh

# Install zshrc
if [ -f ~/.zshrc ]; then
  mv ~/.zshrc ~/.zshrc_bak${`date -Iminutes`}
fi
ln -s ~/dots/.zshrc ~/.zshrc
