" インクリメントサーチ
set incsearch

" 検索ハイライト
set hlsearch

" syntax highlight
syntax enable
filetype plugin on
" row number
set number
set fileencodings=utf-8,cp932

" クリップボードにコピーする
set clipboard+=unnamed

"ailias
"jjでノーマルモードに入る"
inoremap <silent> jj <ESC>
"折り返し上も移動する
"nnoremap j gj
"nnoremap k gk
nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>
set hidden "writeせずにバッファを切り替えられるようにする
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=2 "画面上でタブ文字が占める幅
set shiftwidth=2 "自動インデントでずれる幅
set softtabstop=2
"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent
"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
 
"句読点にも移動できるようにする
nnoremap ) /\(。\\|、\\|[.:][ \t\n]\\|^\n\)<CR>l
nnoremap ( ?\(。\\|、\\|[.:][ \t\n]\\|^\n\)<CR>h

"マークダウンで_をエラー表示しない
augroup update_markdown_syntax
  autocmd!
    autocmd BufNew,BufEnter * if &filetype == 'markdown' | syntax match
    markdownError '\w\@<=\w\@=' | endif
    augroup END

" backspaceでなんでも消せるように
set backspace=indent,eol,start
