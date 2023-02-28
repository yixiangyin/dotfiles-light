#!/bin/bash
# (it's not idompotent)
BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -s ${BASEDIR}/vimrc ~/.vimrc
ln -s ${BASEDIR}/vim ~/.vim

# zsh
# ln -s ${BASEDIR}/zshrc ~/.zshrc

# git
ln -s ${BASEDIR}/gitconfig ~/.gitconfig

# bash
ln -s ${BASEDIR}/bashrc ~/.bashrc

# zsh
ln -s ${BASEDIR}/zshrc ~/.zshrc

# tmux
ln -s ${BASEDIR}/tmux.conf ~/.tmux.conf
ln -s ${BASEDIR}/tmux ~/.tmux
