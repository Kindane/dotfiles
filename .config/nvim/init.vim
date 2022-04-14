if !has('nvim')
	set ttymouse=xterm2
endif

if has('nvim')
	tnoremap <Esc> <C-\><C-n>
endif

" plugins (manager = vim-plug)
"call plug#begin('~/.local/share/nvim/plugged}"')
call plug#begin(stdpath('data'))

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'

" go through files
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" easymotion
Plug 'easymotion/vim-easymotion'

" Cool text in the bottom of vim
Plug 'vim-airline/vim-airline'

" Amazing icons in my nvim
Plug 'ryanoasis/vim-devicons'

" barbar
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

call plug#end()
" prettify if &t_Co > 1 syntax enable

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (has("nvim"))
	"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
	set termguicolors " enable true colors support
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1 "enable true colors
colorscheme minimalist

set relativenumber
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
let g:airline_powerline_fonts = 1
set encoding=UTF-8

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
" search for selected text using //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber


" Barbar default config
" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

