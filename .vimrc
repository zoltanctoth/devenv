" make xterm ignore CTRL+something characters
silent execute "!stty stop ^-" | redraw
set nocompatible

set ruler
syntax on
colo elflord

set incsearch
set fileformats=unix,dos

set showmode
set laststatus=2
set statusline=%r%t\ %m%=%l,%v\ %P\ %y

map <C-l> w
imap <C-l> <Esc>wi

map <C-h> b
imap <C-h> <Esc>bi

