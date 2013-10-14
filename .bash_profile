#!/bin/bash

if [ -f .bashrc ]; then
    source .bashrc
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm use ruby-1.9.3-p194 &>/dev/null

##
# Your previous /Users/zoltanctoth/.bash_profile file was backed up as /Users/zoltanctoth/.bash_profile.macports-saved_2012-08-15_at_10:04:36
##

# MacPorts Installer addition on 2012-08-15_at_10:04:36: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH:~/bin

# Finished adapting your PATH environment variable for use with MacPorts.

export list_open_ports="sudo lsof -i -P | grep -iF listen"
export EDITOR=vim

if [ -d ~/src/emr-client-tools ]
then
    export EMR_CLIENT_TOOLS_ROOT=~/src/emr-client-tools
    PATH=$PATH:/Users/zoltanctoth/.prezi/simply:/Users/zoltanctoth/src/emr-client-tools
    export PATH
fi

if [[ $(uname) == "Darwin" ]]
then
    export JAVA_HOME="$(/usr/libexec/java_home)"
fi

