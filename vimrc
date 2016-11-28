" ==============================
" Vundle Stuff 
" =============================
set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-commentary'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-repeat'

call vundle#end()
filetype plugin indent on

" Make CtrlP user ag for lsiting files. 
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

set number
set expandtab

" tabbing 
set tabstop=2
set shiftwidth=2
set softtabstop=2

let mapleader = ","
nmap <Leader>so :source $MYVIMRC<cr>
" run :PluginInstall to install new plugins! 
