# Editor
alias vim=nvim
alias v=nvim

# helper functions
yellow="\e[33m"
reset="\e[0m"
runcmd() {
  echo -e "${yellow}${@}${reset}"
  $@
}

# Git
gprune() {
  runcmd git fetch origin --prune
  runcmd git branch -vv | grep 'gone]' | awk '{print $1}' | xargs git branch -D
}

gdef() {
  runcmd git remote show origin | grep "HEAD branch" | cut -d ":" -f 2 | xargs
}

gum() {
  runcmd gprune
  runcmd git checkout "$(gdef)"
  runcmd git pull origin "$(gdef)"
}

gundo() {
  runcmd git reset --soft HEAD~1
}

# LS
alias ls='ls -F --color=always --group-directories-first'
alias ll='ls -la'
alias ld='ls -d */'
alias la='ls -CA'
alias l='ls'

# Shortcuts
alias c='clear'
alias r='source ~/.zshrc'
alias p='pwd'
alias x='exit'
