set nocompatible              " be iMproved, required
filetype off                  " required
set clipboard=unnamedplus
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'Valloric/YouCompleteMe'
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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set number
set number relativenumber
set ruler
set omnifunc=syntaxcomplete#Complete
set laststatus=2
set noshowmode
set noswapfile
set t_Co=256
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_w = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:ackprg = 'ack --ignore-dir=build --ignore-file=is:{.eslintcache,package-lock.json}' 
" air-line
let g:airline_powerline_fonts = 1

 let g:airline_symbols = {}

 " unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" CtrlP settings
let g:ctrlp_max_files = 20000
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" UltiSnipts
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" YCM
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" NERDTree settings
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 35
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
syntax enable
colorscheme OceanicNext
filetype plugin on

nmap <C-n> :NERDTreeToggle<CR>
map <C-k> :NERDTreeFind <CR>
" tabs
 au FileType javascript
         \ setlocal tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab 
 au FileType css setlocal tabstop=2 expandtab shiftwidth=4 softtabstop=4
 au FileType scss setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=4

" position cursor inbetween brackets
imap {<Tab> {}<Esc>i
imap [<Tab> []<Esc>i
imap (<Tab> ()<Esc>i
imap '<Tab> ''<Esc>i
imap `<Tab> ``<Esc>i
imap "<Tab> ""<Esc>i
