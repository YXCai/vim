call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'bling/vim-airline'
Plug 'dagwieers/asciidoc-vim'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'majutsushi/tagbar'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'chiel92/vim-autoformat'
Plug 'raimondi/delimitmate'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'dracula/vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/Solarized'
Plug 'vim-scripts/gruvbox'
Plug 'mfukar/robotframework-vim'
Plug 'yuttie/hydrangea-vim'
call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set undofile
set smartcase
let mapleader=","
set softtabstop=4
set cursorline
set showmatch

set lazyredraw
set incsearch


inoremap jk <esc>

syntax on
set relativenumber
set hlsearch
set background=dark
colorscheme hydrangea 

" Easymotion

let g:EasyMotion_smartcase = 1
map <Leader>w <Plug>(easymotion-w)
" The more advanced stuff

nnoremap <f5> :split<ENTER> 
nnoremap <f6> <C-W>v
nnoremap <f7> :q<ENTER>
nnoremap <f8> :wq<ENTER>
nnoremap <f9> :make<ENTER>

map <C-j> <C-W>j
map <C-K> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
 " Syntastic checking

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_cpp_checkers = ['avrgcc', 'clang_check', 'gcc']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['cpp']}
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Rainbow parentheses

let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ]

let g:rbpt_max = 13

au vimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

