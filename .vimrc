let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


" Plug-ins.
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-markdown'
Plug 'tribela/vim-transparent'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
call plug#end()

let g:lightline = {
      \ 'colorscheme':'gruvbox',
      \ }

colorscheme gruvbox
set background=dark

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn syntax highlighting.
syntax on

filetype plugin indent on

" Tutn off modelines.
set modelines=0

" Automatically wrap text that extends beyond the screen lenght.
set wrap


" Tabs.
set textwidth=80
set formatoptions=tcqrnl
set tabstop=4
set shiftwidth=4
set expandtab
set noshiftround
set ruler
set showmatch
set smarttab
" Display 5 lines above/below the cursor when scrolling a mouse.
set scrolloff=5

" Fixes common backspace problems.
set backspace=indent,eol,start

" Speed up scrolling in Vim.
set ttyfast

" Status bar.
set laststatus=2

" Display options
set noshowmode
set showcmd

" Show line numbers.
set number
set relativenumber

" Encoding.
set encoding=utf-8

" Highlighting matching patterns.
set hlsearch

" Enable incremental search.
set incsearch

" Include matching uppercase words with lowercase search term.
set ignorecase

" Include only uppercase words with uppercase search term.
set smartcase


" Automatically save and load folds.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Rid of backup, swap, undo files.
set nobackup
set noswapfile
set noundofile

" Map jj to <Esc>.
imap jj <Esc>

set wildmenu

"Turn off arrow navigation...
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"Turn off arrow navigation in insert mode as well.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Close vim if only NERDTree open.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]


" Split rules
set splitright
set splitbelow
