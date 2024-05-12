#!/bin/bash 

# Setup symlinks 
WORKDIR=$(pwd)
ln -sf $WORKDIR/i3 $HOME/.config/
ln -sf $WORKDIR/nvim $HOME/.config/
ln -sf $WORKDIR/bash/bashrc $HOME/.bashrc
ln -sf $WORKDIR/alacritty $HOME/.config/
ln -sf $WORKDIR/polybar $HOME/.config/
ln -sf $WORKDIR/rofi/tokyonight_custom.rasi $HOME/.local/share/rofi/themes
ln -sf $WORKDIR/rofi $HOME/.config/
