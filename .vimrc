set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'



Plugin 'rust-lang/rust.vim'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'vim-airline/vim-airline'
Plugin 'plasticboy/vim-markdown'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'fatih/vim-go'
Plugin 'vim-syntastic/syntastic'


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

syntax on
color dracula

set smartindent
set clipboard=unnamed
set shiftwidth=2
set tabstop=2
set number
set cursorline
set softtabstop=2
set tabstop=2
set incsearch
set hlsearch


vmap <C-c> :w !pbcopy<CR><CR>

" NERDtree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" AIRLINE
let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:go_version_warning = 0
set laststatus=2

set noruler
set noshowmode
set hidden
