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

function OpenTerminal(editor) 
  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&bufType", "not found")

  execute a:editor.terminal
  execute 'set nonu'
  execute 'set nornu'
  silent au BufLeave <buffer> stopinsert!
  silent au BufWinEnter,WinEnter <buffer> startinsert!
  
  execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
  execute a:editor.exit_terminal
  execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"
  startinsert!
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function DeleteAllBuffersExceptCurrent()
  " Captura buffer actual
  let bufNumActual = bufnr("%")
  " Carga los buffers abiertos
  let buffers = getbufinfo({'bufloaded': 1})
  for buf in buffers
    if buf.bufnr != bufNumActual
      execute 'bd' buf['bufnr']
    endif
  endfor
endfunction
