"
" custom inkpot_albert.vim file
"
" based on:
"
" Vim color file
" Name:       inkpot.vim
" Maintainer: Ciaran McCreesh <ciaran.mccreesh@googlemail.com>
" Homepage:   http://github.com/ciaranm/inkpot/
"

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "inkpot_albert"

" map a urxvt cube number to an xterm-256 cube number
fun! <SID>M(a)
    return strpart("0135", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! <SID>X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + <SID>M(l:x) + (6 * <SID>M(l:y)) + (36 * <SID>M(l:z))
        endif
    endif
endfun

exec "hi Normal         cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(16)

exec "hi IncSearch      cterm=BOLD   ctermfg=" . <SID>X(0) . " ctermbg=" . <SID>X(11)
exec "hi Search         cterm=BOLD   ctermfg=" . <SID>X(0) . " ctermbg=" . <SID>X(11)
exec "hi ErrorMsg       cterm=BOLD   ctermfg=" . <SID>X(16) . " ctermbg=" . <SID>X(48)
exec "hi WarningMsg     cterm=BOLD   ctermfg=" . <SID>X(16) . " ctermbg=" . <SID>X(68)
exec "hi ModeMsg        cterm=BOLD   ctermfg=" . <SID>X(38) . " ctermbg=" . "NONE"
exec "hi MoreMsg        cterm=BOLD   ctermfg=" . <SID>X(38) . " ctermbg=" . "NONE"
exec "hi Question       cterm=BOLD   ctermfg=" . <SID>X(52) . " ctermbg=" . "NONE"

exec "hi StatusLine     cterm=BOLD   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(81)
exec "hi User1          cterm=BOLD   ctermfg=" . <SID>X(28) . " ctermbg=" . <SID>X(81)
exec "hi User2          cterm=BOLD   ctermfg=" . <SID>X(39) . " ctermbg=" . <SID>X(81)
exec "hi StatusLineNC   cterm=NONE   ctermfg=" . <SID>X(84) . " ctermbg=" . <SID>X(81)
exec "hi VertSplit      cterm=NONE   ctermfg=" . <SID>X(84) . " ctermbg=" . <SID>X(81)

exec "hi WildMenu       cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(38)

exec "hi MBENormal                   ctermfg=" . <SID>X(85) . " ctermbg=" . <SID>X(81)
exec "hi MBEChanged                  ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(81)
exec "hi MBEVisibleNormal            ctermfg=" . <SID>X(85) . " ctermbg=" . <SID>X(82)
exec "hi MBEVisibleChanged           ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(82)

exec "hi DiffText       cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(34)
exec "hi DiffChange     cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(17)
exec "hi DiffDelete     cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(32)
exec "hi DiffAdd        cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(20)

exec "hi Folded         cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(35)
exec "hi FoldColumn     cterm=NONE   ctermfg=" . <SID>X(39) . " ctermbg=" . <SID>X(80)

exec "hi Directory      cterm=NONE   ctermfg=" . <SID>X(28) . " ctermbg=" . "NONE"
exec "hi LineNr         cterm=NONE   ctermfg=" . <SID>X(11) . " ctermbg=" . <SID>X(0)
exec "hi NonText        cterm=BOLD   ctermfg=" . <SID>X(39) . " ctermbg=" . "NONE"
exec "hi SpecialKey     cterm=BOLD   ctermfg=" . <SID>X(55) . " ctermbg=" . "NONE"
exec "hi Title          cterm=BOLD   ctermfg=" . <SID>X(48) . " ctermbg=" . "NONE"
exec "hi Visual         cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(38)
exec "hi CursorLine     cterm=NONE                              ctermbg=" . <SID>X(17)
exec "hi CursorLineNr   cterm=BOLD                              ctermbg=" . <SID>X(17)

" SYNTAX
exec "hi Comment        cterm=NONE   ctermfg=" . <SID>X(7) . " ctermbg=" . <SID>X(81)

exec "hi Constant       cterm=NONE   ctermfg=" . <SID>X(11) . " ctermbg=" . "NONE"
exec "hi String        cterm=NONE   ctermfg=" . <SID>X(73) . " ctermbg=" . "NONE"
exec "hi Character     cterm=NONE   ctermfg=" . <SID>X(73) . " ctermbg=" . "NONE"
exec "hi Number         cterm=NONE   ctermfg=" . <SID>X(9) . " ctermbg=" . "NONE"
exec "hi Boolean        cterm=BOLD   ctermfg=" . <SID>X(9) . " ctermbg=" . "NONE"

exec "hi Error          cterm=NONE   ctermfg=" . <SID>X(15) . " ctermbg=" . <SID>X(32)

exec "hi Identifier     cterm=NONE   ctermfg=" . <SID>X(3) . " ctermbg=" . "NONE"
exec "hi Function       cterm=NONE   ctermfg=" . <SID>X(2) . " ctermbg=" . "NONE" 

exec "hi Ignore         cterm=NONE"
 
exec "hi Statement      cterm=BOLD   ctermfg=" . <SID>X(27) . " ctermbg=" . "NONE"
exec "hi Conditional    cterm=BOLD   ctermfg=" . <SID>X(27) . " ctermbg=" . "NONE"
exec "hi Operator       cterm=BOLD   ctermfg=" . <SID>X(27) . " ctermbg=" . "NONE"
    
exec "hi PreProc        cterm=NONE   ctermfg=" . <SID>X(2) . " ctermbg=" . "NONE"
    
exec "hi Special        cterm=NONE   ctermfg=" . <SID>X(55) . " ctermbg=" . "NONE"
exec "hi SpecialChar    cterm=NONE   ctermfg=" . <SID>X(55) . " ctermbg=" . "NONE"
    
exec "hi Todo           cterm=BOLD   ctermfg=" . <SID>X(0) . " ctermbg=" . <SID>X(10)
    
exec "hi Type           cterm=NONE   ctermfg=" . <SID>X(71) . " ctermbg=" . "NONE"
    
exec "hi Underlined     cterm=BOLD   ctermfg=" . <SID>X(77) . " ctermbg=" . "NONE"

" SYNTAX END

exec "hi TaglistTagName cterm=BOLD   ctermfg=" . <SID>X(39) . " ctermbg=" . "NONE"

exec "hi Pmenu          cterm=NONE   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(82)
exec "hi PmenuSel       cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(38)
exec "hi PmenuSbar      cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(39)
exec "hi PmenuThumb     cterm=BOLD   ctermfg=" . <SID>X(87) . " ctermbg=" . <SID>X(39)

exec "hi SpellBad       cterm=NONE ctermbg=" . <SID>X(32)
exec "hi SpellRare      cterm=NONE ctermbg=" . <SID>X(33)
exec "hi SpellLocal     cterm=NONE ctermbg=" . <SID>X(36)
exec "hi SpellCap       cterm=NONE ctermbg=" . <SID>X(21)
exec "hi MatchParen     cterm=BOLD ctermbg=" . <SID>X(9) . "ctermfg=" . <SID>X(25)

exec "hi Conceal      cterm=NONE      ctermfg=" . <SID>X(55) . " ctermbg=" . "NONE"
exec "hi ColorColumn  cterm=NONE      ctermbg=" . <SID>X(81)

" vim: set et :

