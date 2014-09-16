#!/bin/bash


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
rvm use ruby-1.9.3-p194 &>/dev/null

export PATH=/opt/local/bin:/opt/local/sbin:$PATH:~/bin
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


[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

if [ -f .bashrc ]; then
    source .bashrc
fi

if [ ! -d ~/.vim/bundle/vundle ]
then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

PATH=$PATH:/Users/zoltanctoth/.prezi/simply
export PATH

source /Users/zoltanctoth/.rvm/scripts/rvm

alias etl="ssh etl.prezi.com"
alias petl="ssh publisher@etl.prezi.com"
alias hdp="ssh hadoopclient.prezi.com"

alias updatedb="sudo /usr/libexec/locate.updatedb"

export PATH=$PATH:/usr/local/go/bin/
export GOROOT=/usr/local/go
export GOPATH=~/src/flowkeeper

if [ -d ~/.prezi ]
then
  export PATH=$PATH:/Users/zoltanctoth/.prezi/simply
fi

if [ -d /Users/zoltanctoth/src/emr-client-tools/ ]
then
  export PATH=$PATH:/Users/zoltanctoth/src/emr-client-tools/
  export EMR_CLIENT_TOOLS_ROOT=/Users/zoltanctoth/src/emr-client-tools/
fi

if [ -f ~/src/etl/config/setup-etl-env ]
then
    . ~/src/etl/config/setup-etl-env
fi

if [ -f /Users/zoltanctoth/src/datatools ]
then
    export PATH=$PATH:/Users/zoltanctoth/src/datatools/
fi

. ~/.prezi/flowkeeper/init_environment.sh

function start_emr_proxy {
    nohup $EMR_CLIENT_TOOLS_ROOT/elastic-mapreduce/elastic-mapreduce --socks $(jobflow) &
}
export start_emr_proxy

export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

find ~/.bash_profile.d/ -type f | sort | while read f; do source $f; done

