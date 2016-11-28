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
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-repeat'
Bundle 'townk/vim-autoclose'

" Ruby/Rails stuff 
Bundle 'tpope/vim-rails'
Bundle 'thoughtbot/vim-rspec'

" React/JS stuff  
Bundle 'pangloss/vim-javascript'
Bundle 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" Make CtrlP user ag for lsiting files. 
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:jsx_ext_required = 0 " Allow JSX in normal JS files 

set number
set expandtab

" tabbing 
set tabstop=2
set shiftwidth=2
set softtabstop=2

let mapleader = ","
nmap <Leader>so :source $MYVIMRC<cr>
" run :PluginInstall to install new plugins! 

