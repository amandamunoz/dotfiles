" ==============================
" Vundle Stuff
" =============================
syntax on
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'townk/vim-autoclose'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'

" Ruby/Rails stuff
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'

" React/JS stuff
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

" Make CtrlP user ag for lsiting files.
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

" Make CtrlP ignore certain filetypes
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
unlet g:ctrlp_user_command
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:jsx_ext_required = 0 " Allow JSX in normal JS files

set number
set expandtab
set wildignore+=tmp/** " Ignore stuff that can't be opened

" tabbing
set tabstop=2
set shiftwidth=2
set softtabstop=2

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

autocmd BufWritePre * :%s/\s\+$//e " remove trailing spaces in all files

let mapleader = ","
nmap <Leader>so :source $MYVIMRC<cr>
" run :PluginInstall to install new plugins!

