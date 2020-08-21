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
" タグリスト
nnoremap <silent> tt :Tlist<CR>

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

set background=dark
colorscheme hybrid
syntax on
highlight LineNr ctermfg=143
