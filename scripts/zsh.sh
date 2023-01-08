
#!/bin/bash

DOTFILESDIR=${HOME}/workspace/personal/dotfiles

ln -sf ${DOTFILESDIR}/zsh/.zshrc ${HOME}/.zshrc
ln -sf ${DOTFILESDIR}/zsh/aliases.zsh ${HOME}/.oh-my-zsh/custom/aliases.zsh
