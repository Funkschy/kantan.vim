" Vim syntax file
" Language: Kantan
" Maintainer: Felix Schoeller
" Latest Revision: 17.08.2019

if exists("b:current_syntax")
	finish
endif

" Keywords and Storage Classes
syntax keyword kantanStorageClass let
syntax keyword kantanKeyword return def
syntax keyword kantanKeyword if else import extern while for struct null
syntax keyword kantanKeyword new delete sizeof as
syntax keyword kantanKeyword type nextgroup=kantanIdent skipwhite skipempty

syntax keyword kantanType char i32 f32 string bool void

" Booleans and nil
syntax keyword kantanBoolean true false null

" Operators
syntax match kantanOperator "\v\*"
syntax match kantanOperator "\v\+"
syntax match kantanOperator "\v-"
syntax match kantanOperator "\v\%"
syntax match kantanOperator "\v/"
syntax match kantanOperator "\v\="
syntax match kantanOperator "\v-\>"
syntax match kantanOperator "\v\=\="
syntax match kantanOperator "\v\!\="
syntax match kantanOperator "\v\<"
syntax match kantanOperator "\v\>"
syntax match kantanOperator "\v\<\="
syntax match kantanOperator "\v\>\="

" Comments
syntax match kantanComment "\v\/\/.*$"

" Numbers
syntax match kantanInt   display "\<[0-9][0-9_]*"
syntax match kantanFloat display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)"

" Strings
syntax region kantanDoubleString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region kantanSingleString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link kantanStorageClass StorageClass
highlight link kantanKeyword Keyword
highlight link kantanBoolean Boolean
highlight link kantanOperator Operator
highlight link kantanComment Comment
highlight link kantanInt Number
highlight link kantanFloat Float
highlight link kantanDoubleString String
highlight link kantanSingleString String
highlight link kantanType Type
highlight link kantanConst Constant
highlight link kantanIdent Identifier

let b:current_syntax = "kantan"
