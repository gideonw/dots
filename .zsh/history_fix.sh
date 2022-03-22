#!/usr/bin/env zsh
# George Ornbo (shapeshed) http://shapeshed.com
# License - http://unlicense.org
#
# Fixes a corrupt .zsh_history file

mv ~/.zsh/.histfile ~/.zsh/.histfile_bad
strings -eS ~/.zsh/.histfile_bad > ~/.zsh/.histfile
fc -R ~/.zsh/.histfile
rm ~/.zsh/.histfile_bad
