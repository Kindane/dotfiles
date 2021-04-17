if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" plugins (manager = vim-plug)
call plug#begin('~/.vim/plugged')

" Color sheme
Plug 'morhetz/gruvbox'

" go through files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" YouCompleteMe
" Plug 'Valloric/YouCompleteMe'

" autopairs
Plug 'jiangmiao/auto-pairs'

" easymotion
Plug 'easymotion/vim-easymotion'

" Snippets
"Plug 'honza/vim-snippets' " doesn't work

call plug#end()
" prettify if &t_Co > 1 syntax enable

colorscheme delek " my terminal does not support color schemes... ?
colorscheme gruvbox
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


" I don't need a mouse :D
"if has('mouse')
"set mouse=a
"endif


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
" map <F5> <esc>:w<return><esc>:make\ main<%
