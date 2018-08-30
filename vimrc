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
"set background=dark " we are using a dark background
syntax on " syntax highlighting on
"colorscheme elflord
colorscheme minimalist

let c_no_curly_error=1 "prevent syntax highlight from flaging initializer lists as an error

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " Don't keep one
set noswf
"set makeef=error.err " When using make, where should it dump the file

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lsp=0 " space it out a little more (easier to read)
set wildmenu " turn on wild menu
set wildmode=longest,list " let me tab complete file names
set ruler " Always show current positions along the bottom 
set cmdheight=2 " the command bar is 2 high
set backspace=2 " make backspace work normal
"set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set report=0 " tell us when anything is changed via :...
set ch=2
set mousehide " Hide the mouse when typing text
set suffixes=.bak,~,.swp,.o,.out

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

" Use these to save and to quit
map  :w! $HOME/.bak/%:t<CR>:w<CR>
map  :q<CR>

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
" CScope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" Ignore disabled tests
set  errorformat^=%-G%.%#Test\ case\ is\ disabled%.%#

execute pathogen#infect()

