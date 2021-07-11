"----------
"   color  
"----------
syntax enable
" --- --- --- --- 
"   for morokai   
" --- --- --- --- 
"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

" --- --- --- --- 
"    for modest   
" --- --- --- --- 
set notermguicolors
colorscheme modest

" --- --- --- --- 
"    for github   
" --- --- --- --- 
"colorscheme github
"let g:airline_theme = "github"
"let g:lightline = { 'colorscheme': 'github' }
" use a slightly darker background, like GitHub inline code blocks
"let g:github_colors_soft = 1

" --- --- --- --- --- 
"    for focusedpanic 
" --- --- --- --- --- 
"colorscheme focusedpanic


" -------------- 
"   for neo-vim  
" -------------- 
"let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/Users/k-kan/.pyenv/shims/python'
let g:python3_host_prog = '/Users/k-kan/.pyenv/shims/python3'

"------------------- 
"   for quick-run    
" ------------------ 
nnoremap <silent><leader>r :QuickRun<CR>
let g:quickrun_config = {}

" Commnet
" 'runner':'vimproc '      : 非同期実行を行う
" 'hook/time/enable':1     : 実行にかかった時間を表示する
let g:quickrun_config._ = {
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'outputter/quickfix/open_cmd': 'copen',
    \ 'runner': 'vimproc', 
    \ 'runner/vimproc/updatetime': 60,
    \ 'hook/time/enable': 1  
    \ }

" Comment
" 'command':'~/.pyenv/shims/python'  : pyenvでインストールしたPythonを使う
" 'cmdopt':'-u'                      : 標準出力を都度表示する
let g:quickrun_config.python = {
    \ 'command': '~/.pyenv/shims/python',
    \ 'cmdopt': '-u'
    \ }

" Commnet
" 'input':'input'    : inputというファイルを標準入力として与える
" 'runner':'system'  : "非同期実行を行わない
let g:quickrun_config.cpp = {
    \ 'command': 'g++',
    \ 'input': 'input',
    \ 'runner': 'system'
    \ }


"------------
" key bild   
"------------
inoremap <silent> jj <ESC>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" カーソル下の単語を * で検索
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk
" 括弧の自動補完
" inoremap { {}<LEFT>
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap " ""<LEFT>
" inoremap ' ''<LEFT>

" shift + 矢印でウィンドウサイズを変更
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>

" -------------- 
" NERDTree bind  
" -------------- 
"nnoremap <silent><C-e> :NERDTreeToggle<CR>
" -------------- 
"     Fern       
" -------------- 
nnoremap <Plug>(fern-action-open) :<C-u>Fern . -drawer<CR> 
nnoremap <Plug>(fern-action-close) :<C-u>FernDo close -drawer<CR>
nmap <Plug>(fern-action-open-and-close) <Plug>(fern-action-open)

nmap <C-e> <Plug>(fern-action-open-and-close) 
nmap <C-r> <Plug>(fern-action-close) 

"-----------------
"   custom color  
"-----------------
" highlight 
highlight comment ctermfg=white ctermbg=8

"-----------------
"     setting     
"-----------------
set number              " 行番号の表示
set wrap                " 長いテキストの折り返し
set textwidth=0         " 自動的に改行が入るのを無効化
set colorcolumn=80      " その代わり80文字目にラインを入れる
set ts=4
set tabstop=4
set shiftwidth=4

set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト (2013-07-03 14:30 修正）
" 前時代的スクリーンベルを無効化
set t_vb=
set novisualbell

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

" syntastic 
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

" original http://stackoverflow.com/questions/12374200/using-uncrustify-with-vim/15513829#15513829
function! Preserve(command)
    " Save the last search.
    let search = @/
    " Save the current cursor position.
    let cursor_position = getpos('.')
    " Save the current window position.
    normal! H
    let window_position = getpos('.')
    call setpos('.', cursor_position)
    " Execute the command.
    execute a:command
    " Restore the last search.
    let @/ = search
    " Restore the previous window position.
    call setpos('.', window_position)
    normal! zt
    " Restore the previous cursor position.
    call setpos('.', cursor_position)
endfunction

function! Autopep8()
    call Preserve(':silent %!autopep8 -')
endfunction

" Shift + F で自動修正
autocmd FileType python nnoremap <S-f> :call Autopep8()<CR>


"------------------
"   neo-snippet    
"------------------
let g:neosnippet#snippets_directory = '$HOME/.vim/snippets/'

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"---------------------------------------
"     dein for vim-plugin-manager       
"---------------------------------------
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

" --- add plugin from here ---
  call dein#add('sheerun/vim-polyglot')
  call dein#add('thinca/vim-quickrun', {'on': 'QuickRun'})
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})

" --- add filer --- 
"  call dein#add('preservim/nerdtree')
  call dein#add('lambdalisue/fern.vim')

" --- snippet --- 
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
" colorschema
  call dein#add('matveyt/vim-modest')
  call dein#add('cormacrelf/vim-colors-github')
  call dein#add('tjammer/focusedpanic.vim')

" Syntax checker
  call dein#add('scrooloose/syntastic')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
