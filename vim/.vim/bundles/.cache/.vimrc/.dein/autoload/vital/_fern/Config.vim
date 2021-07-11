" ___vital___
" NOTE: lines between '" ___vital___' is generated by :Vitalize.
" Do not modify the code nor insert new lines before '" ___vital___'
function! s:_SID() abort
  return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze__SID$')
endfunction
execute join(['function! vital#_fern#Config#import() abort', printf("return map({'define': '', 'translate': '', 'config': ''}, \"vital#_fern#function('<SNR>%s_' . v:key)\")", s:_SID()), 'endfunction'], "\n")
delfunction s:_SID
" ___vital___
let s:plugin_name = expand('<sfile>:p:h:t')
let s:plugin_name = s:plugin_name =~# '^__.\+__$'
      \ ? s:plugin_name[2:-3]
      \ : s:plugin_name =~# '^_.\+$'
      \   ? s:plugin_name[1:]
      \   : s:plugin_name

function! s:define(prefix, default) abort
  let prefix = a:prefix =~# '^g:' ? a:prefix : 'g:' . a:prefix
  for [key, Value] in items(a:default)
    let name = prefix . '#' . key
    if !exists(name)
      execute 'let ' . name . ' = ' . string(Value)
    endif
    unlet Value
  endfor
endfunction

function! s:config(scriptfile, default) abort
  let prefix = s:translate(a:scriptfile)
  call s:define(prefix, a:default)
endfunction

function! s:translate(scriptfile) abort
  let path = fnamemodify(a:scriptfile, ':gs?\\?/?')
  let name = matchstr(path, printf(
        \ 'autoload/\zs\%%(%s\.vim\|%s/.*\)$',
        \ s:plugin_name,
        \ s:plugin_name,
        \))
  let name = substitute(name, '\.vim$', '', '')
  let name = substitute(name, '/', '#', 'g')
  let name = substitute(name, '\%(^#\|#$\)', '', 'g')
  return 'g:' . name
endfunction
