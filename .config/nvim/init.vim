set nocompatible
filetype off
set shell=bash

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'rust-lang/rust.vim'

Plug 'scrooloose/nerdcommenter'

call plug#end()

filetype plugin indent on

set laststatus=2
set t_Co=256

syntax on

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:deoplete#enable_at_startup = 1

highlight LineNr ctermfg=yellow
highlight CursorLineNr ctermfg=3

nnoremap <c-p> :GFiles<cr>

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

nmap <leader>w :w!<cr>

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
