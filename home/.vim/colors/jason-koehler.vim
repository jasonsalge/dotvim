hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif

runtime colors/koehler.vim

let g:colors_name = "jason-koehler"

"hi Normal		  guifg=white  guibg=black
"hi Scrollbar	  guifg=darkcyan guibg=cyan
"hi Menu			  guifg=black guibg=cyan
"hi SpecialKey	  term=bold  cterm=bold  ctermfg=darkred  guifg=#cc0000
"hi NonText		  term=bold  cterm=bold  ctermfg=darkred  gui=bold      guifg=#cc0000
"hi Directory	  term=bold  cterm=bold  ctermfg=brown  guifg=#cc8000
"hi ErrorMsg		  term=standout  cterm=bold  ctermfg=grey  ctermbg=red  guifg=White  guibg=Red
"hi Search		  term=reverse  ctermfg=white  ctermbg=red      guifg=white  guibg=Red
"hi MoreMsg		  term=bold  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
"hi ModeMsg		  term=bold  cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr		  term=underline  cterm=None ctermfg=yellow	guifg=Yellow
"hi Question		  term=standout  cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine	  term=bold,reverse  cterm=bold ctermfg=blue ctermbg=black gui=bold guifg=blue guibg=white
"hi StatusLineNC   term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
"hi Title		  term=bold  cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
"hi Visual		  term=reverse	cterm=reverse  gui=reverse
"hi WarningMsg	  term=standout  cterm=bold  ctermfg=darkred guifg=Red
"hi Cursor		  guifg=bg	guibg=Green
"hi Comment		  term=bold  cterm=bold ctermfg=cyan  guifg=#80a0ff
hi Comment		  term=bold  cterm=None ctermfg=blue  guifg=#80a0ff
"hi Constant		  term=underline  cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi Special		  term=bold  cterm=bold ctermfg=brown  guifg=Orange
"hi Identifier	  term=underline   ctermfg=brown  guifg=#40ffff
"hi Statement	  term=bold  cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc		  term=underline  cterm=bold ctermfg=blue   guifg=#ff80ff
hi Type			  term=underline  cterm=bold ctermfg=green  gui=bold  guifg=#60ff60
"hi Error		  term=reverse	ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo			  term=standout  ctermfg=blue	ctermbg=yellow  guifg=Blue  guibg=Yellow
"hi CursorLine	  term=underline  guibg=#555555 cterm=underline
"hi CursorColumn	  term=underline  guibg=#555555 cterm=underline
"hi MatchParen	  term=reverse  ctermfg=blue guibg=Blue
"hi TabLine		  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
"hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
"hi TabLineSel	  term=reverse	ctermfg=white ctermbg=lightblue guifg=white guibg=blue
"hi Underlined	  term=underline cterm=bold,underline ctermfg=lightblue guifg=lightblue gui=bold,underline
"hi Ignore		  ctermfg=black ctermbg=black guifg=black guibg=black

