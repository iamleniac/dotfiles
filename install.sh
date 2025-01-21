#!/bin/bash
echo "Adding neovim config"
sh ./scripts/vim.sh
echo "Neovim config added"
echo "Add tmux config"
sh ./scripts/tmux.sh
echo "tmux config added"
echo "Add zsh config"
sh ./scripts/zsh.sh
echo "zsh config added"
