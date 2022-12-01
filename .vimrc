" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
"
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set nocompatible

" Set dein runtime path (required)
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Call dein initialization (required)
call dein#begin('~/.cache/dein')

call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" Your plugins go here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('scrooloose/nerdtree')
call dein#add('davidhalter/jedi-vim')
call dein#add('scrooloose/syntastic')
call dein#add('posva/vim-vue')
call dein#add('hashivim/vim-terraform')

" Finish dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

let NERDTreeShowHidden = 1
let g:jedi#popup_on_dot = 0

" Uncomment if you want to install not-installed plugins on startup.
"if dein#check_install()
" call dein#install()
"endif
