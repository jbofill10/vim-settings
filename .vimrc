set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'glepnir/oceanic-material'
Plugin 'vim-python/python-syntax'
Plugin 'vim-airline/vim-airline'
Plugin 'vimsence/vimsence'
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number
set background=dark
colorscheme oceanic_material

let g:oceanic_material_background = 'darker'
set completeopt-=preview

let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
set splitright
