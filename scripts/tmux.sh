#!/bin/bash

DOTFILESDIR=${HOME}/workspace/personal/dotfiles

mkdir -p ${HOME}/.local/scripts

ln -sf ${DOTFILESDIR}/tmux/.tmux.conf ${HOME}/.tmux.conf
ln -sf ${DOTFILESDIR}/tmux/tmux-sessionizer ${HOME}/.local/scripts/tmux-sessionizer
