set number
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-rails'
NeoBundle 'scrooloose/syntastic'
"let g:syntastic_ruby_checkers = ['rubocop']
" Ruby static code analyzer.
NeoBundleLazy 'ngmy/vim-rubocop', {
    \   'autoload' : { 'filetypes' : ['ruby'] }
    \ }
let s:bundle = neobundle#get('vim-fugitive')
function! s:bundle.hooks.on_source(bundle)
  let g:vimrubocop_keymap = 0
  nmap <Leader>r :RuboCop<CR>
endfunction

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
