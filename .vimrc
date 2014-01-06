filetype plugin on
filetype plugin indent off

" make xterm ignore CTRL+something characters
silent execute "!stty stop ^-" | redraw
set nocompatible
filetype off

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

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" pathogen
execute pathogen#infect()

Bundle 'gmarik/vundle'
Bundle 'wookiehangover/jshint.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'

" go plugin
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
set rtp+=/usr/local/go/misc/vim
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd FileType go compiler go

" go compiler
let g:golang_goroot = $GOROOT
" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

