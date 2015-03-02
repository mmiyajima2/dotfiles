"NeoBundle Scripts-----------------------------
syntax on
set number
set expandtab
set tabstop=2

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/$HOME/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/$HOME/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'scrooloose/syntastic'

let g:syntastic_python_checkers = ['flake8']

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'groenewege/vim-less'

" MIYAJIMA add..
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'davidhalter/jedi-vim'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
