" MIYAJIMA add..
syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.js setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

function! s:setpypath()
    py3(sys.path.insert(0, '.'))
endfunction

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
 NeoBundle 'posva/vim-vue'

 let g:syntastic_python_checkers = ['flake8']
 let NERDTreeShowHidden = 1
 let g:typescript_indent_disable = 1

 call neobundle#end()

 " Required:
 filetype plugin indent on

 call s:setpypath()


 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


