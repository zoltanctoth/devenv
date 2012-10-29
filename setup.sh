#!/bin/bash

D=$(pwd)
cd

ln -s $D/.bashrc . 
ln -s $D/.bash_profile .
ln -s $D/.vim .
ln -s $D/.vimrc .
ln -s $D/.screenrc .

cd -
