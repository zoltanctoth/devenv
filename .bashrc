export TERM="xterm-color"
export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export PS1="\\u@\h:\\W\\$ "

export PATH="$PATH:$HOME/bin"
export PYTHONPATH=${PYTHONPATH}:`pwd`/.vim/python_utils

function fixssh(){
    for i in $(find /tmp -mindepth 2 -iname 'agent.*' -ipath '/tmp/ssh-*' -user $USER 2>/dev/null); do export SSH_AUTH_SOCK=$i; ssh localhost id && break; done
}
export -f fixssh

# for building the androind SDK
ulimit -S -n 1024

ssh-agent >/dev/null


PATH=/usr/local/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi


