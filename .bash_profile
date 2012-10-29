#!/bin/bash

if [ -f .bashrc ]; then
    source .bashrc
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/zoltanctoth/.bash_profile file was backed up as /Users/zoltanctoth/.bash_profile.macports-saved_2012-08-15_at_10:04:36
##

# MacPorts Installer addition on 2012-08-15_at_10:04:36: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:~/bin
# Finished adapting your PATH environment variable for use with MacPorts.

export list_open_ports="sudo lsof -i -P | grep -iF listen"
