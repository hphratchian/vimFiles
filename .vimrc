"
" This is a .vimrc script.
"   -- Hrant P. Hratchian
"
"
" Begin by assigning some basic settings.
"
set ic
set smartcase
set hlsearch
set incsearch
set nobackup
set history=50
set showmode
set ruler
set showcmd
set backspace=2
set nojs
set background=dark
"
" Set-up a few general options to my default values.  Note that some of these
" are overwritten automatically if a file of specific type is opened.
"
" filetype plugin on
filetype plugin indent on
syntax on
"
" Here are some settings add specifically for use when coding.
"
" au filetype fortran setlocal softtabstop=6 expandtab smartindent shiftwidth=2 comments=:C,:! textwidth=75
au FileType fortran setlocal textwidth=80 fo-=t
au FileType perl setlocal softtabstop=4 expandtab autoindent smartindent shiftwidth=2 comments=:# textwidth=75 indentkeys=-0#
au FileType text setlocal softtabstop=4 expandtab comments=:\  textwidth=75
au FileType tex setlocal spell spelllang=en_us softtabstop=2 expandtab autoindent shiftwidth=2 comments=:% textwidth=75
au FileType gnuplot setlocal softtabstop=3 expandtab smartindent shiftwidth=2 comments=:# textwidth=75
"
" Make vim open files at the location where last edited instead of opening at
" the top of the file.
"
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                         \ exe "normal g'\"" | endif
"
" Here are some key mappings.
"
vmap  qq  gq
vmap  aa  !Continuation_Block.pl <CR>
"
" Here are some lines to deal with strange things that happen when viewing via
" iTerm on my MacBook.
"
if $TERM_PROGRAM == 'iTerm.app'
  set term=linux
endif
