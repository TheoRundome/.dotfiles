" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endi

"Plug-ins.
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/limelight.vim'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/vim-pencil'
Plug 'chrisbra/Colorizer'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-markdown'
Plug 'tribela/vim-transparent'
Plug 'morhetz/gruvbox'
call plug#end()

" Lua config require.
lua require('config/treesitter')

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

nnoremap <C-n> :NERDTreeToggle<CR>

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

" NertTree setup.
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Show hidden files.
let NERDTreeShowHidden=1

let g:goyo_height='80%'
let g:goyo_width='80%'

" Limelight configuration.
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Limelight Goyo integration.
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

