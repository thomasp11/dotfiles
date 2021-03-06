#!/bin/bash

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Move out old dotfiles
echo "Moving old dotfiles to <dotfile>.orig"
mv ~/.bashrc ~/.bashrc.orig
mv ~/.vimrc ~/.vimrc.orig
mv ~/.tmux.conf ~/.tmux.conf.orig
mv ~/.profile ~/.profile.orig
mv ~/.zshrc ~/.zshrc.orig

# Link these dotfiles
echo "Symlinking new dotfiles"
ln -s ${PWD}/bashrc ~/.bashrc
ln -s ${PWD}/vimrc ~/.vimrc
ln -s ${PWD}/tmux.conf ~/.tmux.conf
ln -s ${PWD}/profile ~/.profile
ln -s ${PWD}/zshrc ~/.zshrc

# Install vim-plug
# https://github.com/junegunn/vim-plug
echo "Installing vim-plug and plugins"
curl -fsLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

echo "Done!"

# Touch a file where I can store custom vars to keep out of git
touch ~/.custom_vars
