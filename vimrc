set nocompatible " get out of horrible vi-compatible mode

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'octol/vim-cpp-enhanced-highlight'
"Bundle 'dracula/vim'
Bundle 'https://github.com/nanotech/jellybeans.vim.git'
Bundle 'tpope/vim-obsession'
Bundle 'dhruvasagar/vim-prosession'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'majutsushi/tagbar'  " uninstall exuberant-ctags if this doesn't have value
"Bundle 'Valloric/YouCompleteMe'

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

" Append error format for boost test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore disabled tests when working in Apex
if !empty(glob("Apex/SConscript"))
    set  errorformat^=%-G%.%#Test\ case\ is\ disabled%.%#
endif

" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"syntax on " syntax highlighting on
colorscheme jellybeans
let g:airline_theme="bubblegum"
