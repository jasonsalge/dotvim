" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif

runtime colors/molokai.vim

let g:colors_name = "redbeard-molokai"

hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi Conditional	      term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi Repeat 	      term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
"hi MatchParen 	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60

"hi clear
"set background=dark
"if exists("syntax_on")
  "syntax reset
"endif

