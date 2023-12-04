#!/bin/sh

cd ~

export HYPRLAND_LOG_WLR=1

export _JAVA_AWR_WM_NONREPARENTING=1
export XCURSOR_THEME=Bibata-Modern-Classic
export XCURSOR_SIZE=24

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export SDL_IM_MODULE=fcitx
export GLFW_IM_MODULE=ibus

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORM="wayland"
export QT_QPA_PLATFORMTHEME=qt5ct

export XDG_SESSION_TYPE="wayland"
export XDG_SESSION_DESKTOP="Hyprland"
export XDG_CURRENT_DESKTOP="Hyprland"

if [ -n "$TMUX" ]; then
else
exec Hyprland
fi
