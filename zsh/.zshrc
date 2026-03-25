# Set Default Editor
export EDITOR='nvim'

# Start zoxide
eval "$(zoxide init zsh)"

# Start starship
eval "$(starship init zsh)"

# Start antidote plugin manager
source $HOMEBREW_PREFIX/opt/antidote/share/antidote/antidote.zsh
antidote load

# Load Aliases
source /Users/leniac/.zsh_aliases

# Add cargo to PATH
. "$HOME/.cargo/env"

# bun completions
[ -s "/Users/leniac/.bun/_bun" ] && source "/Users/leniac/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# homebrew bin
. "/opt/homebrew/bin"

# go
export PATH="$(go env GOPATH)/bin:$PATH"

# Start tmux only in fully interactive terminals
if [[ -o interactive ]] && [[ -t 1 ]] && [[ -z "$TMUX" ]]; then
  tmux
fi
