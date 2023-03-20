#!/bin/env bash
cd $HOME/dotfiles
git submodule update --init
mkdir -p ~/.tmux/plugins/
git clone  https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm/ --depth=1
mkdir -p ~/.zinit/
git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
