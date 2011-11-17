export TERM="xterm-color"
export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export PS1='\w \$ '

export PATH="$HOME/bin:$PATH"
export PYTHONPATH=${PYTHONPATH}:`pwd`/.vim/python_utils

if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi

# for building the androind SDK
ulimit -S -n 1024

ssh-agent >/dev/null

