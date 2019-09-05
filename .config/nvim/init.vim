set nocompatible
filetype off
set shell=bash

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-syntastic/syntastic'

Plug 'majutsushi/tagbar'

Plug 'sebastianmarkow/deoplete-rust'
Plug 'rust-lang/rust.vim'

call plug#end()

filetype plugin indent on

set laststatus=2
set t_Co=256

syntax on

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary = '/home/keegan/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path = '/home/keegan/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
call deoplete#custom#option('max_list', 25)
set completeopt-=preview

highlight LineNr ctermfg=yellow
highlight CursorLineNr ctermfg=3

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

nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

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
