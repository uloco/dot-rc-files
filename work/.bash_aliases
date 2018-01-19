#!/usr/bin/env bash

# General Utils
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias less='less -R'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls -G --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias tree='find . -print | sed -e '\''s;[^/]*/;|____;g;s;____|; |;g'\'''
alias npm-globals='npm list --global --depth 0'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias noproxy='unset http_proxy https_proxy ftp_proxy'
alias addproxy='export http_proxy=http://magnum.grob.local:3128 && export https_proxy=$http_proxy'

alias vim='nvim'

# Git
alias gs='git status'
alias gss='git status -s'
alias ga='git add'
alias gb='git branch --all'
alias gcm='git commit -m'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gca='git commit --amend -C HEAD'
alias gcaa='gca -a'
alias gp='git push'
alias gpu='git push -u origin $(git rev-parse --abbrev-ref HEAD)'
alias gpt='git push --follow-tags'
alias gpl='git pull'
alias gr='git reset'
alias grh='git reset --hard'
alias grl='git reset @^'
alias grls='git reset @^ --soft'
alias gg='git log --graph --pretty=format:'\''%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset'\'' --abbrev-commit --date=relative'
alias ggs='gg --stat'
alias gl='git log'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias gstash='git stash -u'
alias gpop='git stash pop'
alias gdelete='git push --delete origin'
alias gprune='git remote prune origin && gcleanup'
alias git-default-branch="git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'"
alias git-checkout-default='git checkout $(git-default-branch)'
alias gcleanup="git-checkout-default &>/dev/null && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -d"
