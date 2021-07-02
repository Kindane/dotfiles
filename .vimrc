if !has('nvim')
    set ttymouse=xterm2
endif

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

" plugins (manager = vim-plug)
call plug#begin('~/.vim/plugged')

" Ayu theme
Plug 'ayu-theme/ayu-vim'

" go through files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" autopairs
Plug 'jiangmiao/auto-pairs'

" easymotion
Plug 'easymotion/vim-easymotion'


call plug#end()
" prettify if &t_Co > 1 syntax enable

set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

set number
set cursorline
set autoindent
set cindent shiftwidth=4
set softtabstop=4
set ruler
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
" set default assembler as FASM
autocmd BufNew,BufRead *.asm set ft=nasm
set ttimeout
set ttimeoutlen=100
set list
set listchars=tab:>-,trail:- " replace tabs with --> and spaces with --

" script
" <CR> = enter
map <C-n> <esc>:NERDTreeToggle<CR> 
map <Leader> <Plug>(easymotion-prefix)
