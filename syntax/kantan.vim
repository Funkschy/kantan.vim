" Vim syntax file
" Language: Kantan
" Maintainer: Felix Schoeller
" Latest Revision: 04.09.2020

if exists("b:current_syntax")
	finish
endif

" Keywords and Storage Classes
syntax keyword kantanStorageClass let
syntax keyword kantanKeyword return def delegate defer
syntax keyword kantanKeyword if else import extern export while for struct union enum null
syntax keyword kantanKeyword new delete sizeof as break continue
syntax keyword kantanKeyword type nextgroup=kantanIdent skipwhite skipempty

syntax keyword kantanType i8 i16 i32 i64 isize u8 u16 u32 u64 usize f32 f64 string bool void
syntax keyword kantanTodo TODO FIXME contained

" Booleans and nil
syntax keyword kantanBoolean true false null undefined

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
syntax match kantanComment "\v\/\/.*$" contains=kantanTodo

" Numbers
syntax match kantanDecInt   display "\<[0-9][0-9_]*"
syntax match kantanHexInt   display "\<0[xX][0-9a-fA-F][0-9_a-fA-F]*"
syntax match kantanFloat display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)"

" Strings
syntax region kantanDoubleString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region kantanSingleString start=/\v'/ skip=/\v\\./ end=/\v'/

highlight link kantanStorageClass StorageClass
highlight link kantanKeyword Keyword
highlight link kantanBoolean Boolean
highlight link kantanOperator Operator
highlight link kantanComment Comment
highlight link kantanDecInt Number
highlight link kantanHexInt Number
highlight link kantanFloat Float
highlight link kantanDoubleString String
highlight link kantanSingleString String
highlight link kantanType Type
highlight link kantanConst Constant
highlight link kantanIdent Identifier

let b:current_syntax = "kantan"
