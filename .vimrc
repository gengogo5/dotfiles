set encoding=utf-8
scriptencoding utf-8

set backspace=indent,eol,start

" タブ・インデント設定
set expandtab " タブ入力を複数の空白入力に置き換える
set tabstop=2 " 画面上でタブ文字が占める幅
set smartindent " 改行時に前の行の構文をチェックし次の行のインデントを増減する
set shiftwidth=2 " smartindentで増減する幅
set autoindent " 改行時に前の行のインデントを継続する
set number " 行番号表示

" 文字列検索
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
" Ctrl+eでディレクトリツリー表示
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>

" 括弧可視化
set showmatch " 括弧の対応関係を一瞬表示する
source $VIMRUNTIME/macros/matchit.vim " Vimの「%」を拡張する

" コマンド補完
set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

" ステータスライン設定
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

let g:python3_host_prog = expand('/usr/local/bin/python')


""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

" ファイルオープンを便利に
call dein#add('Shougo/unite.vim')
" Unite.vimで最近使ったファイルを表示できるようにする
call dein#add('Shougo/neomru.vim')
" ファイルをtree表示してくれる
call dein#add('scrooloose/nerdtree')
" Gitを便利に使う
" call dein#add('tpope/vim-fugitive')

" Rails向けのコマンドを提供する
" call dein#add('tpope/vim-rails')
" Ruby向けにendを自動挿入してくれる
call dein#add('tpope/vim-endwise')

" コメントON/OFFを手軽に実行
call dein#add('tomtom/tcomment_vim')
" シングルクオートとダブルクオートの入れ替え等
call dein#add('tpope/vim-surround')

" インデントに色を付けて見やすくする
call dein#add('nathanaelkane/vim-indent-guides')
" ログファイルを色づけしてくれる
call dein#add('vim-scripts/AnsiEsc.vim')
" 行末の半角スペースを可視化
call dein#add('bronson/vim-trailing-whitespace')

" ctrlp
call dein#add('ctrlpvim/ctrlp.vim')
nnoremap <silent> <Space>cf :CtrlPCurWD<CR>

if dein#check_install()
  call dein#install()
endif

call dein#end()

" Required:
filetype plugin indent on

" deinを使う際はカラースキーマを後から指定する必要がある
set background=dark
colorscheme hybrid
syntax on
highlight LineNr ctermfg=143
