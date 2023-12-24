# adapted from 
# - Github repo: https://github.com/ibnYusrat/vimcode
# - Post: https://danielmiessler.com/p/vim/

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jcherven/jummidark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jremmen/vim-ripgrep'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'metakirby5/codi.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'APZelos/blamer.nvim'
call plug#end()
colorscheme OceanicNext
set encoding=UTF-8
set guifont=Cousine\ Nerd\ Font,\ Regular
nmap <F6> :NERDTreeToggle<CR>
map <C-Up> :m -2<CR>
map <C-k> :m -2<CR>
map <C-Down> :m +1<CR>
map <C-j> :m +1<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
"nnoremap d "_d
"nnoremap c d
"nnoremap C D
"vnoremap c d
"nnoremap x "_x
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
let g:blamer_enabled = 1
let g:blamer_delay = 500
runtime macros/matchit.vim

inoremap jk <ESC>
set number
set noswapfile
set hlsearch
set ignorecase
set incsearch
set tabstop=4
set expandtab
set softtabstop=4
set cursorline
