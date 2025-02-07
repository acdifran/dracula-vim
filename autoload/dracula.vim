" Palette: {{{

let g:dracula#palette           = {}
let g:dracula#palette.fg        = ['#F8F8F2', 231]

let g:dracula#palette.bglighter = ['#393649',  59]
let g:dracula#palette.bglight   = ['#2E2B3B',  59]
let g:dracula#palette.bg        = ['#22212C',  59]
let g:dracula#palette.bgdark    = ['#17161D',  17]
let g:dracula#palette.bgdarker  = ['#0B0B0F',  16]

let g:dracula#palette.comment   = ['#7970A9', 103]
let g:dracula#palette.selection = ['#454158',  60]
let g:dracula#palette.subtle    = ['#424450',  60]

let g:dracula#palette.cyan      = ['#80FFEA', 159]
let g:dracula#palette.green     = ['#8AFF80', 157]
let g:dracula#palette.orange    = ['#FFCA80', 223]
let g:dracula#palette.pink      = ['#FF80BF', 218]
let g:dracula#palette.purple    = ['#9580FF', 147]
let g:dracula#palette.red       = ['#FF9580', 217]
let g:dracula#palette.yellow    = ['#FFFF80', 229]
let g:dracula#palette.blue      = ['#66D9EF', 159]

"
" ANSI
"
let g:dracula#palette.color_0  = '#454158'
let g:dracula#palette.color_1  = '#FF9580'
let g:dracula#palette.color_2  = '#8AFF80'
let g:dracula#palette.color_3  = '#FFFF80'
let g:dracula#palette.color_4  = '#9580FF'
let g:dracula#palette.color_5  = '#FF80BF'
let g:dracula#palette.color_6  = '#80FFEA'
let g:dracula#palette.color_7  = '#F8F8F2'
let g:dracula#palette.color_8  = '#7970A9'
let g:dracula#palette.color_9  = '#FFAA99'
let g:dracula#palette.color_10 = '#A2FF99'
let g:dracula#palette.color_11 = '#FFFF99'
let g:dracula#palette.color_12 = '#AA99FF'
let g:dracula#palette.color_13 = '#FF99CC'
let g:dracula#palette.color_14 = '#99FFEE'
let g:dracula#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
