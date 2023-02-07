" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.yml setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

set nocompatible

" Set Dein base path (required)
let s:dein_base = '~/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('preservim/nerdtree')
call dein#add('davidhalter/jedi-vim')
call dein#add('scrooloose/syntastic')
call dein#add('posva/vim-vue')
call dein#add('hashivim/vim-terraform')

" Finish Dein initialization (required)
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

let NERDTreeShowHidden=1

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif
