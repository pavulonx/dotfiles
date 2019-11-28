#!/bin/sh
# cd
alias cdapp="cd ${APPS}"

alias xclip='xclip -selection c'
alias lt='ls -lat'

alias manpacman="cat /usr/share/oh-my-zsh/plugins/archlinux/README.md"

# docker
alias dr=docker
alias drps="docker ps"
alias dre="docker exec"
alias dreit="docker exec -it"
alias drk="docker kill"
alias drc=docker-compose

# git
alias gitunmodlastcommit='git ls-files --full-name | grep -v "$(git diff --name-only HEAD)"'
alias gdo='git diff origin/"$(git_current_branch)"'
alias gdcao='git diff --cached origin/"$(git_current_branch)"'
alias glogf='~/.bin/git_log_tree_fancy.sh'
