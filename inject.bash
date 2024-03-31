#!/usr/bin/env bash

# $home
# sudo ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
# sudo ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

# .config
sudo ln -s $HOME/dotfiles/.config/gtk-3.0 $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/rofi $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/i3 $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/dunst $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/polybar $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/nvim/lua/user $HOME/.config/nvim/lua/

sudo ln -s $HOME/dotfiles/X11/xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d/

# inject sensitive data, need to decrypt the data first
./dec.bash
sudo ln -s $HOME/dotfiles/sensitive/dec/.gitconfig $HOME/.gitconfig

# wayland - deprecated, wait until xwayland had proper scaling solution for HDPI screen
# sudo ln -s $HOME/dotfiles/.config/sway $HOME/.config/
# sudo ln -s $HOME/dotfiles/.config/waybar $HOME/.config/
