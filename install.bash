#!/usr/bin/env bash

# $home
sudo ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
sudo ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf

# .config
sudo ln -s $HOME/dotfiles/.config/gtk-3.0 $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/rofi $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/sway $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/waybar $HOME/.config/
sudo ln -s $HOME/dotfiles/.config/nvim/lua/user $HOME/.config/nvim/lua/
