#!/usr/bin/env bash

system_type=$(uname -s)

if [ "$system_type" = "Linux" ]; then
  # install zsh, zplug, neovim
  if ! command -v zsh > /dev/null 2>&1; then
    echo "Installing zsh..."
    sudo apt install zsh
  elif [ ! -f ${HOME}/.oh-my-zsh ]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#   elif ! command -v nvim > /dev/null 2>&1; then
#     echo "Installing neovim..."
#     sudo apt install neovim
#     # sudo apt install python-neovim
#     # sudo apt install python3-neovim
#     echo "Installing neovim plugins with vim-plug..."
#     nvim "+PlugUpdate" "+PlugClean!" "+PlugUpdate" "+qall"
  elif ! command -v lf > /dev/null 2>&1; then
    echo "Installing lf"
    cd /tmp
    wget https://github.com/gokcehan/lf/releases/download/r27/lf-linux-amd64.tar.gz
    tar xvf lf-linux-amd64.tar.gz
    mv lf /usr/local/bin
    cd ~
  elif ! command -v lsd > /dev/null 2>&1; then
    echo "Installing lsd"
    cd /tmp
    wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd-musl_0.21.0_amd64.deb
    sudo dpkg -i lsd-musl_0.21.0_amd64.deb
    cd ~
  else
    echo "All packages are installed."
  fi
fi