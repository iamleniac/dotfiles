# Helpers
alias help='cat ~/.oh-my-zsh/custom/aliases.zsh'
alias aliases='vim ~/.oh-my-zsh/custom/aliases.zsh'

# editor
alias vim=nvim
alias v=vim

# tmux
alias t=tmux

# npm scripts
alias scripts='cat package.json | fx .scripts'

# helper functions
yellow="\e[33m"
reset="\e[0m"

runcmd() {
  echo -e "${yellow}${@}${reset}"
  $@
}

# Shortcuts
alias c='clear'
alias r='source ~/.zshrc'
alias p='pwd'
alias x='exit'

# NVM
alias nvu='nvm use'
alias nvi='nvm install'

# Yarn
alias yi='yarn install'
alias ya='yarn add'
alias ys='yarn start'
alias yd='yarn dev'
alias yw='yarn watch'
alias y='yarn'

# Git

alias glg="git lg"

gdef() {
  git remote show origin | grep "HEAD branch" | cut -d ":" -f 2 | xargs
}

gbc() {
  runcmd git rev-parse --abbrev-ref HEAD
}

gdec() {
  git branch --no-color | grep -E '^\*' | awk '{print $2}'
}

gpfo() {
  runcmd git push --force-with-lease
}

gum() {
  runcmd git checkout "$(gdef)" 
  runcmd git fetch origin --prune
  runcmd git pull origin "$(gdef)"
}

gsup() {
  runcmd git branch --set-upstream-to "origin/$(gdec)"
}

gdel() {
  runcmd git branch -D $1
}

greb() {
  if [ ! -z $1 ]; then
	  runcmd git rebase $1
  else
	  runcmd git rebase "origin/$(gdef)"
  fi
}

grebc() {
  runcmd git rebase --continue
}

greba() {
  runcmd git rebase --abort
}

grebs() {
  runcmd git rebase --skip
}

gund() {
  runcmd git reset --soft HEAD~1
}

gcem() {
  runcmd git commit -em $1
}

gcaem() {
  runcmd git add .
  gcem $1
}

gpo() {
  runcmd git push origin "$(gdec)"
}

# LS Stuff
alias ls='ls -F --color=always --group-directories-first'
alias ll='ls -la'
alias ld='ls -d */'
alias la='ls -CA'
alias l='ls'
