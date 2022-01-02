function ActiveLanguage()
  let b:state = &spell ? "on":"off"
  if b:state == "off"
    echo "Autocorrect on"
    set spell spelllang=en,es
  elseif b:state == "on"
    echo "Autocorrect off"
    set nospell
  else
    echo "Unrecognized status"
  endif
endfunction

function OpenTerminal() 
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
