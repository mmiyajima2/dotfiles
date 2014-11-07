"NeoBundle Scripts-----------------------------
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
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/syntastic'

let g:syntastic_python_checkers = ['flake8']

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" MIYAJIMA add..
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundleLazy 'lambdalisue/vim-pyenv', {
        \ 'depends': ['davidhalter/jedi-vim'],
        \ 'autoload': {
        \   'filetypes': ['python', 'python3'],
        \ }}



let $PATH = "~/.pyenv/shims:".$PATH

" ... neobundle.vim 初期化等

" DJANGO_SETTINGS_MODULE を自動設定
NeoBundleLazy "lambdalisue/vim-django-support", {
      \ "autoload": {
      \   "filetypes": ["python", "python3", "djangohtml"]
      \ }}


" ... neobundle.vim 終了処理等


"保存時に自動でチェック
let g:PyFlakeOnWrite = 1
"解析種別を設定
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
"McCabe複雑度の最大値
let g:PyFlakeDefaultComplexity=10
"visualモードでQを押すと自動で修正
let g:PyFlakeRangeCommand = 'Q'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
