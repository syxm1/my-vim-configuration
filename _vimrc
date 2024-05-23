unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set rtp+=C:/Users/hisya/vimfiles/bundle/Vundle.vim/
call vundle#begin('C:/Users/hisya/vimfiles/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()            

set nocompatible
set cursorline
set number
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set smarttab
set autoindent
set copyindent
set ai
set ruler
set showmode
set encoding=utf-8
set nobackup
set noswapfile
set nowrap
set hlsearch
set incsearch
filetype on
filetype plugin indent on    
syntax on

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" Select all using Ctrl+A
inoremap<C-a> <esc>ggVG
nnoremap<C-a> ggVG

" Save using Ctrl+S
inoremap<C-s> <esc>:w<CR>
nnoremap<C-s> :w<CR>

" Copy, Cut, and Paste
vnoremap<C-c> "+y
vnoremap<C-x> "+x
nnoremap<C-v> "+gP
inoremap<C-v> <esc>"+gP

" Bracket auto-complete
inoremap {<CR> {<CR>}<esc>O
inoremap {} {}

" Swapping line/s using alt+j, alt+k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Number-toggle
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
