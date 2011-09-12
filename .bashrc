export TERM="xterm-color"
export EDITOR="vim"
export LC_ALL="en_US.UTF-8"
export PS1='\w \$ '

export PATH="$HOME/bin:$PATH"

if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi

