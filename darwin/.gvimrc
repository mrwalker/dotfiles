" Set default window size
set columns=146
set lines=56

" Turn off tool bar
set go-=T

" Change color scheme
colorscheme macvim " For dark
"colorscheme zellner " For light
"set bg=light
if &background == "dark"
  hi normal guibg=black
  " set transp=8
endif

