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
