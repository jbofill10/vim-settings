set nocompatible              " be iMproved, required
" VIM PLUG

call plug#begin('~/.config/nvim/plugged/')
"Plug 'glepnir/oceanic-material'
"Plug 'vim-python/python-syntax'
Plug 'vim-airline/vim-airline'
Plug 'dakyskye/coc-cord'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier', {'do': 'npm install'}

" Syntax Highlighting React
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'joshdick/onedark.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
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

" VIM CONFIG
set number
set splitright
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set listchars=eol:¬,tab:→\ ,trail:~,extends:>,precedes:<,space:·
"set background=dark
" CONFIG FOR ONEDARK.VIM
syntax on
colorscheme onedark 
let g:airline_theme='onedark'
" CONFIG FOR OCEANIC_MATERIAL
"let g:oceanic_material_background = 'darker'

set completeopt-=preview

let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
let g:vimsence_small_text = 'NeoVim'
let g:vimsence_small_image = 'neovim'
let g:prettier#exec_cmd_path = "~/.vim/bundle/vim-prettier"

set updatetime=300

" INDENT LINE
let g:indentLine_char = '│'

" AUTO CLOSE TAG
" " filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,jsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
" use <c-space>for trigger completion inoremap
inoremap <silent><expr> <c-space> coc#refresh()
