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

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

source ~/.bash_profile

cd -
