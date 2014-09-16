#!/bin/bash

D=$(pwd)
cd

echo Adding symlinks

ln -s $D/.bashrc . 
ln -s $D/.bash_profile .
ln -s $D/.bash_profile.d .
ln -s $D/.vim .
ln -s $D/.vimrc .
ln -s $D/.screenrc .

mkdir -p ~/.src
cd ~/.src
git clone https://github.com/square/maximum-awesome.git && cd maximum-awesome && rake
cd - >/dev/null

if [[ $(uname) == "Darwin" ]]
then
    echo setting up brew
    /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

    if [ $? ]
    then
        brew install wget gawk links go coreutils gnu-sed git mercurial
        brew install vim --with-lua --override-system-vi --with-client-server
        brew link --overwrite vim
    else
        echo "brew installation failed" >&2
    fi
fi

sudo pip install flake8

source ~/.bash_profile

cd -
