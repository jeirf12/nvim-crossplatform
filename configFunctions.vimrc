function ActLang(state)
  if a:state == "on"
    echo "Autocorrect on"
    set spell spelllang=en,es
  elseif a:state == "off"
    echo "Autocorrect on"
    set nospell
  else
    echo "Unrecognized status"
  endif
endfunction

function OpenTerminal() 
  " Move to up most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&bufType", "not found")

  if bufType == "terminal"
    " Close existing terminal
    execute "q"
  else 
    " Open terminal
    execute "split term://cmd"
    
    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " Toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert! 

    " Set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
