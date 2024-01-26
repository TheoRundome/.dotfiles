source $HOME/.config/nvim/vim-plug/plugins.vim

" Colors.
colorscheme gruvbox
set background=dark
set termguicolors
let g:lightline = {
      \ 'colorscheme':'gruvbox',
      \ }

" Key-bindings
let mapleader=" "
imap jj <Esc>

nnoremap <up> :resize +2<CR>
nnoremap <down> :resize -2<CR>
nnoremap <left> :vertical resize +2<CR>
nnoremap <right> :vertical resize -2<CR>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

nnoremap <leader>e :Explore<CR>

" Setup
set nocompatible
filetype off
syntax on
filetype plugin indent on
set modelines=0
set wrap
set textwidth=80
set formatoptions=tcqrnl
set tabstop=4
set shiftwidth=4
set expandtab
set noshiftround
set ruler
set showmatch
set smarttab
set scrolloff=5
set backspace=indent,eol,start
set ttyfast
set laststatus=2
set noshowmode
set showcmd
set number
set relativenumber
set encoding=utf-8
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set noundofile
set wildmenu
set splitright
set splitbelow

" VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


