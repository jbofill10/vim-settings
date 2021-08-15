set nocompatible              " be iMproved, required VIM PLUG

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

" NERD TREE
Plug 'preservim/nerdtree'

Plug 'joshdick/onedark.vim'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" DEVICONS
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" WINDOW RESIZE
Plug 'simeji/winresizer'

" Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

call plug#end()

" TAB CONFIG
set termguicolors
nnoremap <leader>v     :BufferPrevious<CR>
nnoremap <leader>c     :BufferNext<CR>
nnoremap <leader>x     :BufferClose<CR>

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
"let bufferline.exclude_ft = ['javascript']
"let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:true

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null

" VIM CONFIG
set number
set splitright
set smartindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set listchars=tab:→\ ,trail:~,extends:>,precedes:<,space:·
set list
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

" NERDTREE
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>m :NERDTreeClose<CR>
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:airline_powerline_fonts = 1

" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
" use <c-space>for trigger completion inoremap
inoremap <silent><expr> <c-space> coc#refresh()
" Change vsplit sizes
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
