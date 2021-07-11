if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/Users/k-kan/.vim,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim82,/usr/local/share/vim/vimfiles/after,/Users/k-kan/.vim/after,/Users/k-kan/.vim/bundles/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/k-kan/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/k-kan/.vim/bundles'
let g:dein#_runtime_path = '/Users/k-kan/.vim/bundles/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/k-kan/.vim/bundles/.cache/.vimrc'
let &runtimepath = '/Users/k-kan/.vim,/usr/local/share/vim/vimfiles,/Users/k-kan/.vim/bundles/repos/github.com/Shougo/vimproc.vim,/Users/k-kan/.vim/bundles/repos/github.com/Shougo/dein.vim,/Users/k-kan/.vim/bundles/.cache/.vimrc/.dein,/usr/local/share/vim/vim82,/Users/k-kan/.vim/bundles/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/k-kan/.vim/after'
filetype off
