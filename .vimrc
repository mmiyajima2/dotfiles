" MIYAJIMA add..
syntax on
set number
set expandtab
set tabstop=8
set shiftwidth=4
set softtabstop=4


" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 "
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'davidhalter/jedi-vim'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'nathanaelkane/vim-indent-guides'

 " Require ``` pip install flake8  ```
 let g:syntastic_python_checkers = ['flake8']
 let g:indent_guides_enable_on_vim_startup = 1
 let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']

 call neobundle#end()

 " Required:
 filetype plugin indent on


 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
