"---------------------------vim set start-----------------------------
set expandtab "タブ入力を複数の空白入力に置き換える
set tabstop=4 "画面上でタブ文字が占める幅
set shiftwidth=4 "自動インデントでずれる幅
set softtabstop=4 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent "改行時に前の行のインデントを継続する
set smartindent "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
"---------------------------vim set end-------------------------------


"---------------------------proxy経由のinstall動作設定 start----------
" プロキシ環境用の設定ファイルを読み込む（リポジトリでは管理しない）
if filereadable($HOME . '.vimrc.local')
  source $HOME/.vimrc.local
endif
"---------------------------proxy経由のinstall動作設定 end------------


"---------------------------NeoBundle start---------------------------
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

" 起動時にruntimepathにNeoBundleのパスを追加する
if has('vim_starting')
   if &compatible
      set nocompatible               " Be iMproved
   endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundle設定の開始
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleのバージョンをNeoBundle自身で管理する
NeoBundleFetch 'Shougo/neobundle.vim'


" インストールしたいプラグインを記述
" 下記は unite.vimというプラグインをインストールする例
" NeoBundle 'Shougo/unite.vim'

NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle "hynek/vim-python-pep8-indent"
NeoBundle "kevinw/pyflakes-vim"
NeoBundle "nvie/vim-flake8"

" NeoBundle設定の終了
call neobundle#end()

filetype plugin indent on

" vim起動時に未インストールのプラグインをインストールする
NeoBundleCheck
"---------------------------NeoBundle end-----------------------------

"---------------------------jedi-vim start----------------------------
" Jedi for python
NeoBundleLazy "davidhalter/jedi-vim", {
    \ "autoload": { "filetypes": [ "python", "python3", "djangohtml"] }}

if ! empty(neobundle#get("jedi-vim"))
  let g:jedi#auto_initialization = 1
  let g:jedi#auto_vim_configuration = 0

  nnoremap [jedi] <Nop>
  xnoremap [jedi] <Nop>
  nmap <Leader>j [jedi]
  xmap <Leader>j [jedi]

  let g:jedi#completions_command = "<C-Space>"
  let g:jedi#goto_assignments_command = "<C-g>"
  let g:jedi#goto_definitions_command = "<C-d>" 
  let g:jedi#documentation_command = "<C-k>"
  let g:jedi#rename_command = "<leader>R"
  let g:jedi#usages_command = "[jedi]n"
  let g:jedi#popup_select_first = 0
  let g:jedi#popup_on_dot = 0

  autocmd FileType python setlocal completeopt-=preview

  " for w/ neocomplete
    if ! empty(neobundle#get("neocomplete.vim"))
        autocmd FileType python setlocal omnifunc=jedi#completions
        let g:jedi#completions_enabled = 0
        let g:jedi#auto_vim_configuration = 0
        let g:neocomplete#force_omni_input_patterns.python =
                        \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
    endif
endif
"---------------------------jedi-vim end------------------------------

"---------------------------syntastic start---------------------------
let g:syntastic_mode_map = {
        \ 'mode': 'active',
        \ 'active_filetypes': ['vim'],
        \ 'passive_filetypes': ['python']
        \}
"---------------------------syntastic end-----------------------------

"---------------------------quickrun start----------------------------
let g:quickrun_config = {
            \   "_" : {
            \       "outputter/buffer/split" : ":botright 8sp",
            \       "outputter/buffer/close_on_empty" : 1
            \   },
            \}

nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"
""---------------------------quickrun end------------------------------

"---------------------------color hybrid start------------------------
syntax on 
set t_Co=256
set background=dark 
colorscheme hybrid
"---------------------------color hybrid end------------------------


