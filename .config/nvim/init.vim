set nocompatible
filetype off
set shell=bash

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'chriskempson/base16-vim'
call plug#end()

filetype plugin indent on

set laststatus=2

set t_Co=256
set termguicolors
let base16colorspace=256

syntax on
set hidden

let g:python3_host_prog = 'python3'

colorscheme base16-gruvbox-dark-hard
highlight Comment cterm=italic gui=italic

set ruler
set cc=80
set nowrap

set mouse=a

set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

let mapleader = ","
let g:mapleader = ","

nnoremap <Leader>w :w!<cr>
nnoremap <Leader>b :TagbarToggle<cr>
nnoremap <Leader>f :RustFmt<cr>

nnoremap <c-p> :GFiles<cr>
" nnoremap <c-p> :Files<cr>

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set showmatch

set noerrorbells
set novisualbell

set nobackup
set nowb
set noswapfile

set number relativenumber

au FileType gitcommit setlocal tw=72
