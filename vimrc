set nocompatible " get out of horrible vi-compatible mode

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'

"Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'tpope/vim-obsession'
"Bundle 'dhruvasagar/vim-prosession'

call vundle#end()
filetype plugin indent on

" Files/Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noswf " nah, no swapfile needed

" Searching
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch " highlight searched for phrases
set incsearch " highlight as you type you search phrase
set ignorecase " ignore case when searching

" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set ts=4
set sw=4
set ai
set nowrap
"let c_space_errors = 1   "highlight space errors in c

" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use ^N to toggle between showing line numbers, and not
:nmap <C-n><C-n> :se nu! <CR>

" expand/shrink current window
map = +
map - -

" visual select
map 	 w

" map CTL-Z to undo
map <M-F9> 

" shortcut keys to move large distances
map <C-Up> <C-Y><C-W><C-W><C-Y><C-W><C-W>
map <C-Down> <C-E><C-W><C-W><C-E><C-W><C-W>
map <C-PageUp> <PageUp><PageUp>
map <C-PageDown> <PageDown><PageDown>

" move between windows by holding CTRL and standard directional keys.
map <C-J> <C-W>j
map <C-K> <C-W>k

" scons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable("SConstruct")
    set makeprg=scons
endif

" disable/enable paste toggle with F2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Append error format for apex's system tests
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !empty(glob("Apex/SConscript"))
    " Ignore disabled tests when working in Apex
    set  errorformat^=%-G%.%#Test\ case\ is\ disabled%.%#
    " ignore: 2018-Sep-06 12:44:20.666194: Apex 3.0.0 with 3 components.
    set  errorformat^=%-G%.%#Apex\ %\\d+%.%\\d+%.%%\\d+\ with\ %\\d+\ components%.%#
    " ignore: unknown location(0): fatal error in
    set  errorformat^=%-Gunknown\ location(0):\ fatal\ error\ in%.%#
endif

" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: If using in a terminal, your color scheme and palette needs to
" match solarized. gnome-terminal, for example, as solarized as options for 
" both.
" See https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
syntax enable
set background=dark
colorscheme solarized
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
      \ 'inactive': {
      \   'left': [ [ 'absolutepath' ] ],
      \ }
      \ }

" XFCE4 terminal fix
" I spend much time in xfce4 terminal, which has problems with xterm-256color
" https://github.com/neovim/neovim/issues/7722
set guicursor=
