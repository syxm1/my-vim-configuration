unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set nocompatible
filetype off

set rtp+=C:/Users/hisya/vimfiles/bundle/Vundle.vim/
call vundle#begin('C:/Users/hisya/vimfiles/bundle')
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()  

syntax enable

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

set nu

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"
let &t_ER = "\e[4 q"

set ttyfast
set lazyredraw

set nowrap
set nobackup
set noswapfile

set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set smarttab
set autoindent
set copyindent

set encoding=utf-8

" bracket auto-complete
inoremap {<CR> {<CR>}<esc>O
inoremap {} {}

" moving line(s)
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" number-relative number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
a
