filetype plugin on
filetype plugin indent off

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

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent

map <C-l> :tabp<CR>
imap <C-l> <Esc>:tabp

map <C-h> :tabn<CR>
imap <C-h> <Esc>:tabn

map  <C-o> :tabe 
imap <C-o> <Esc>:tabe 

map <C-s> :w<CR>
imap <C-s> :w<CR>i

map q :q<CR>
map Q :q!<CR>

map <C-q>: qa<CR>
imap <C-q>: <Esc>qa<CR>

execute pathogen#infect()

" Set up flake8
let g:flake8_ignore="E501"
autocmd BufWritePost *.py call Flake8()

" Go
let g:go_disable_autoinstall = 0  

" Enable neocomplete
let g:neocomplete#enable_at_startup = 1

nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

