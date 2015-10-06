set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "inspiration-711005"

if version >= 700
  hi CursorLine guibg=#180D00
  hi CursorColumn guibg=#180D00
  hi MatchParen guifg=#9FFFFF guibg=#180D00 gui=bold
  hi Pmenu 		guifg=#FFFFFF guibg=#323232
  hi PmenuSel 	guifg=#FFFFFF guibg=#7AC661
endif

" General colors
hi Cursor       guifg=NONE guibg=#FFFFFF gui=none
hi Normal       guifg=#FFFFFF guibg=#180D00 gui=none
hi NonText      guifg=#FFFFFF guibg=#180D00 gui=none
hi LineNr       guifg=#FFFFFF guibg=#323232 gui=none
hi Normal       guifg=#FFFFFF guibg=#180D00 gui=none
hi StatusLine   guifg=#FFFFFF guibg=#180D00 gui=italic
hi StatusLineNC guifg=#FFFFFF guibg=#180D00 gui=none
hi VertSplit    guifg=#FFFFFF guibg=#180D00 gui=none
hi Folded       guifg=#FFFFFF guibg=#180D00 gui=none
hi Title		guifg=#7AC661 guibg=NONE	gui=bold
hi Visual		guifg=#9FFFFF guibg=#323232 gui=none
hi SpecialKey	guifg=#8BA236 guibg=#323232 gui=none

" Syntax highlighting
hi Comment guifg=#7AC661 gui=none
hi Constant guifg=#8BA236 gui=none
hi Number guifg=#8BA236 gui=none
hi Identifier guifg=#7DE7F3 gui=none
hi Statement guifg=#7DE7F3 gui=none
hi Function guifg=#B0F6C9 gui=none
hi Special guifg=#88D372 gui=none
hi PreProc guifg=#88D372 gui=none
hi Keyword guifg=#9FFFFF gui=none
hi String guifg=#4FD3CC gui=none
hi Type guifg=#C3A68D gui=none

