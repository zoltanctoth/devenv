" make xterm ignore CTRL+something characters
silent execute "!stty stop ^-" | redraw

" Configuration file for vim
" set runtimepath=~/.vim,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/addons,/usr/share/vim/vim63,/usr/share/vim/vimfiles,/usr/share/vim/addons/after,~/.vim/after

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start	" more powerful backspacing

" Now we set some defaults for the editor 
set autoindent		" always set autoindenting on
" set linebreak		" Don't wrap words by default
set textwidth=0		" Don't wrap lines by default 
set nobackup		" Don't keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more than
			" 50 lines of registers
set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set smartindent
set expandtab

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" We know xterm-debian is a color terminal
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" set background=dark

if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
 filetype plugin on

endif " has ("autocmd")

" Some Debian-specific things
augroup filetype
  au BufRead reportbug.*		set ft=mail
  au BufRead reportbug-*		set ft=mail
augroup END

" Set paper size from /etc/papersize if available (Debian-specific)
try
  if filereadable('/etc/papersize')
    let s:papersize = matchstr(system('/bin/cat /etc/papersize'), '\p*')
    if strlen(s:papersize)
      let &printoptions = "paper:" . s:papersize
    endif
    unlet! s:papersize
  endif
catch /E145/
endtry

" The following are commented out as they cause vim to behave a lot
" different from regular vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"mutassa, hogy INPUT/REPLACE m¢dban van-e
set showmode
"sorsz mozott m¢dban ind¡tson
set number
"£j sort az el“z“ sor els“ nem blank jele alatt ind¡tson
set autoindent
syntax on
colorscheme ron
set mouse=a
set ruler
set showcmd
set fileformats=unix,dos
set hidden
set shiftwidth=4
set nowrap
filetype plugin indent on
set showmatch
set matchtime=2
set ic
let php_sql_query = 1
let php_baselib = 1

let php_htmlInStrings = 1

"mappings
map  <C-x> :bprevious<CR>
map! <C-x> <Esc><C-x>i<Right>
map  <C-c> :bnext<CR>
map! <C-c> <Esc><C-c>i<Right>

""mentes
map  <C-s> :w<CR>
map! <C-s> <Esc><C-c>i<Right>

map  <C-q> :q<CR>
map! <C-q> <Esc><C-q>

map  q :bdelete<CR>
map  Q :bdelete!<CR>

map  <C-o> :e .<CR>
map! <C-o> <Esc><C-o>

map  <C-a> :make<CR>
imap <C-a> <Esc>:make<CR>

