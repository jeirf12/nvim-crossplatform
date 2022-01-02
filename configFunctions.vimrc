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

  if has('nvim')
    if has('win32') || has('win64')
      execute 'split term://cmd'
    elseif has('unix')
      execute 'split term://zsh'
    endif
  else
    execute 'term zsh'
  endif

  execute 'set nonu'
  execute 'set nornu'
  silent au BufLeave <buffer> stopinsert!
  silent au BufWinEnter,WinEnter <buffer> startinsert!
  
  execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
  if has('nvim')
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
  else
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q!<CR>"
  endif
  execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"
  startinsert!
endfunction
