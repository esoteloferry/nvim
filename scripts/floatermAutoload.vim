" augroup AutoChangeDir
"         autocmd!
"         autocmd BufEnter * silent! lcd %:p:h
" augroup END
function! StartFloatermSilently() abort
  " let $VIM_DIR=expand('%:p:h')
  let $VIM_DIR=getcwd()
  FloatermNew
  FloatermHide
  FloatermSend cd $VIM_DIR
  FloatermSend clear
  stopinsert
  wincmd o
endfunction
autocmd VimEnter * call StartFloatermSilently()
