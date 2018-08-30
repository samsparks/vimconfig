""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=50 " How many lines of history to remember
"set cf " enable error files and error jumping
filetype plugin on " load filetype plugins
set viminfo='20,\"50
"set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " syntax highlighting on
colorscheme minimalist

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " Don't keep one
set noswf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets for
set hlsearch " highlight searched for phrases
set incsearch " highlight as you type you search phrase
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to when I hit :set list
set visualbell " blink
set laststatus=2 " always show the status line
set scrolloff=2 " add buffer on top and  bottom

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shiftwidth=4
set ts=4
set autoindent " Makes life much happier
set textwidth=0
set expandtab
set nowrap

set ignorecase
"let c_space_errors = 1   "highlight space errors in c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Use ^N to toggle between showing line numbers, and not
:nmap <C-n><C-n> :se nu! <CR>

" Display current buffers
map \ :buffers<CR>

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" scons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable("SConstruct")
    set makeprg=scons
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" disable/enable paste toggle with F2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Append error format for boost test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set errorformat+=%f(%l):%r
 
" Ignore disabled tests when working in Apex
if !empty(glob("Apex/SConscript"))
    set  errorformat^=%-G%.%#Test\ case\ is\ disabled%.%#
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Load plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
