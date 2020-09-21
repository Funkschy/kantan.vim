" Vim syntax file
" Language: Kantan
" Maintainer: Felix Schoeller
" Latest Revision: 21.09.2020

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
    finish
endif
let b:did_indent = 1

setlocal cindent
setlocal cinkeys-=0#
setlocal cinoptions=L0,(s,Ws,J1,j1,m1
setlocal formatoptions-=t formatoptions+=croqnl
