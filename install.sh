#! /bin/bash

if [ -d ~/dots ]; then
  cd ~/dots && git pull
else
  git clone git@github.com:gideonw/dots.git ~/dots
fi

#  Link all the files

ln -s ~/dots/.files/env.sh ~/.files/env.sh
ln -s ~/dots/.files/aliases.sh ~/.files/aliases.sh