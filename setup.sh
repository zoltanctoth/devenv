#!/bin/bash

D=$(pwd)
cd

echo Adding symlinks

ln -s $D/.bashrc . 
ln -s $D/.bash_profile .
ln -s $D/.vim .
ln -s $D/.vimrc .
ln -s $D/.screenrc .
ln -s $D/.zshrc .

if [[ $(uname) == "Darwin" ]]
then
    echo setting up brew
    /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

    if [ $? ]
    then
        brew install wget gawk links
    else
        echo "brew installation failed" >&2
    fi
fi

# vim vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# vim pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle

git clone git://github.com/tpope/vim-sensible.git
git clone https://github.com/scrooloose/nerdtree.git

source ~/.bash_profile

cd -
