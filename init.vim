set nocompatible              " be iMproved, required
filetype off                  " required
" VIM PLUG

call plug#begin('~/.config/nvim/plugged/')
Plug 'glepnir/oceanic-material'
Plug 'vim-python/python-syntax'
Plug 'vim-airline/vim-airline'
Plug 'dakyskye/coc-cord'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim'
Plug 'tmsvg/pear-tree'
Plug 'airblade/vim-gitgutter'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', {'do': 'npm install'}
call plug#end()
" NVIM VUNDLE

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'glepnir/oceanic-material'
"Plugin 'vim-python/python-syntax'
"Plugin 'vim-airline/vim-airline'
"Plugin 'dakyskye/coc-cord'
"Plugin 'tpope/vim-fugitive'
"Plugin 'neoclide/coc.nvim'
"Plugin 'tmsvg/pear-tree'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'yuezk/vim-js'
"Plugin 'maxmellon/vim-jsx-pretty'
"Plugin 'prettier/vim-prettier', {'do': 'npm install'}

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
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

" NVIM VUNDLE
set number
set background=dark
colorscheme oceanic_material

let g:oceanic_material_background = 'darker'
set completeopt-=preview

let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:prettier#exec_cmd_path = "~/.vim/bundle/vim-prettier"
set splitright

set updatetime=300

" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
" use <c-space>for trigger completion inoremap
inoremap <silent><expr> <c-space> coc#refresh()
