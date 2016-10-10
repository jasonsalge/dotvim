if exists('g:loaded_redbeard_tools')
  finish
endif

"
" Cycle through .h, _inline.h, .cpp
"
function! Edit_companion_cycle(direction)
    let filename = bufname("%")
    let companion = ""
    let alternate = ""
    " what is the companion file name
    if filename  =~ "cpp$"
        let companion = substitute(filename, ".cpp$", ".h", "")
        let alternate = substitute(filename, ".cpp$", "_inline.h", "")
    elseif filename  =~ "_inline.h$"
        let companion = substitute(filename, "_inline.h$", ".cpp", "")
        let alternate = substitute(filename, "_inline.h$", ".h", "")
    elseif filename =~ "h$"
        let companion = substitute(filename, ".h$", "_inline.h", "")
        let alternate = substitute(filename, ".h$", ".cpp", "")
    endif
    " edit that file
    if companion != ""
        if match("\cr", a:direction) == 1
            let tmpvar = companion
            let companion = alternate
            let alternate = tmpvar
        endif

        let filetoread = companion
        if !filereadable(filetoread)
            if alternate != ""
                let filetoread = alternate
            endif
        endif
        if filereadable(filetoread)
            execute "badd " filetoread
            execute "buffer " filetoread
        else
            if alternate != ""
                echo "Can't find companion (" companion " or " alternate ")"
            else
                echo "Can't find companion (" companion ")"
            endif
        endif
    endif
endfunction

set <m-6>=6
map <M-6> <ESC>:call Edit_companion_cycle("f")<CR>
set <m-5>=5
map <M-5> <ESC>:call Edit_companion_cycle("r")<CR>
"
" Map companion editing (has to be done here since this is only sourced once)
"
function! Edit_companion()
 let filename = bufname("%")
 let companion = ""
 let alternate = ""
 " what is the companion file name
 if filename  =~ "cpp$"
   let companion = substitute(filename, ".cpp$", ".h", "")
 elseif filename  =~ "hpp$"
   let companion = substitute(filename, ".hpp$", ".h", "")
 elseif filename =~ "h$"
   let companion = substitute(filename, ".h$", ".hpp", "")
   let alternate = substitute(filename, ".h$", ".cpp", "")
 endif
 " edit that file
 if companion != ""
   if !filereadable(companion)
     if alternate != ""
       let companion = alternate
       let alternate = ""
     endif
   endif
   execute "badd " companion
   execute "buffer " companion
 endif
endfunction
"set <m-6>=6
"map <M-6> <ESC>:call Edit_companion()<CR>


"
" create _inline.h,
"
function! Create_inline()
 let filename = bufname("%")
 let companion = ""
 " what is the companion file name
 if filename  =~ "cpp$"
   let companion = substitute(filename, ".cpp$", "_inline.h", "")
 elseif filename  =~ "_inline.h$"
   echo "Refusing to create an _inline.h file for an _inline.h file"
 elseif filename =~ "h$"
   let companion = substitute(filename, ".h$", "_inline.h", "")
 endif
 " edit that file
 if companion != ""
   if filereadable(companion)
     echo "_inline.h file already exists."
   else
     execute "badd " companion
     execute "buffer " companion
   endif
 endif
endfunction
set <m-8>=8
map <M-8> <ESC>:call Create_inline()<CR>

"
" create .cpp
"
function! Create_source()
 let filename = bufname("%")
 let companion = ""
 " what is the companion file name
 if filename  =~ "cpp$"
   echo "Refusing to create an .cpp file for a .cpp file"
 elseif filename  =~ "_inline.h$"
   let companion = substitute(filename, "_inline.h$", ".cpp", "")
 elseif filename =~ "h$"
   let companion = substitute(filename, ".h$", ".cpp", "")
 endif
 " edit that file
 if companion != ""
   if filereadable(companion)
     echo ".cpp file already exists."
   else
     execute "badd " companion
     execute "buffer " companion
   endif
 endif
endfunction
set <m-7>=7
map <M-7> <ESC>:call Create_source()<CR>

"
" Map ctrl-d to change to directory containing file in current buffer
function! CHANGE_CURR_DIR()
let _dir = expand("%:p:h")
exec "cd " . _dir
unlet _dir
endfunction

set <m-d>=d
map <M-d> <ESC>:call CHANGE_CURR_DIR()<CR>

let g:loaded_redbeard_tools = 1

