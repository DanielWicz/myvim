
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add your plugin entries bellow this line
Bundle 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ambv/black'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'luochen1990/rainbow'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" My commmands
" Enable folding
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let python_highlight_all=1
syntax on
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

let g:rainbow_active = 1
set hlsearch!
set nu
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Format with Black everytime you save
autocmd BufWritePre *.py execute ':Black'
