filetype on
filetype plugin on
filetype plugin indent on

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
" Normal tab
set tabstop=4
" Indent
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


augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

" HASKELL

" wish to use a specific version of ghc, then please change
" the ghc below to a full path to the correct one
au BufEnter *.hs compiler ghc

" For this section both of these should be set to your
" browser and ghc of choice, I used the following
" two vim lines to get those paths:
" :r!which google-chrome
" :r!whigh ghc
let g:haddock_browser = "/usr/bin/links"
let g:ghc = "/usr/local/bin/ghc"

set tags=./TAGS;/tags

set rtp+=/usr/local/go/misc/vim

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'wookiehangover/jshint.vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on     " required!

