" color
syntax on

" encoding
set encoding=utf-8

" show col number
:set nu

" tab setting
:set expandtab
:set tabstop=2
:set shiftwidth=2
:retab

" show row number
:set ruler

" set backspace
:set backspace=indent,eol,start

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" show tree
Plugin 'scrooloose/nerdtree'
nmap <C-G> :NERDTreeToggle<CR>

" auto complete
Plugin 'Valloric/YouCompleteMe'

" auto complete sign
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'

" auto remove whitespace
Plugin 'bronson/vim-trailing-whitespace'

" a easy way to align code
Plugin 'junegunn/vim-easy-align'

" status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline'
Plugin 'tpope/vim-fugitive'
set laststatus=2
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" tag
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'ramitos/jsctags'
Plugin 'maksimr/vim-jsbeautify'
nmap <C-T> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:javascript_plugin_jsdoc = 1

" color
Plugin 'flazz/vim-colorschemes'
:colorscheme molokai

call vundle#end()
filetype plugin indent on
