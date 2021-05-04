if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" plugins (manager = vim-plug)
call plug#begin('~/.vim/plugged')

" Material theme
Plug 'kaicataldo/material.vim', { 'branch': 'main'  }

" go through files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" autopairs
Plug 'jiangmiao/auto-pairs'

" easymotion
Plug 'easymotion/vim-easymotion'


call plug#end()
" prettify if &t_Co > 1 syntax enable

colorscheme material
let g:material_theme_style = 'default-community'
set number
set cursorline
set bg=dark
set autoindent
set cindent shiftwidth=4
set softtabstop=4
set ruler
set expandtab
set tabstop=4
set showcmd
set nowrap
set hlsearch


" vim backup && swap files
"ActivateAddons vim-snippets snipmate
set noswapfile
set nobackup
set nrformats-=octal
" for easymotion
" let g:mapleader=','

filetype plugin on
set ttimeout
set ttimeoutlen=100
set list
set listchars=tab:>-,trail:- " replace tabs with --> and spaces with --

" script
" <CR> = enter
map <C-n> <esc>:NERDTreeToggle<CR> 
map <Leader> <Plug>(easymotion-prefix)
