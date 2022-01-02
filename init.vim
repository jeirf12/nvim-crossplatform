if has("win32") || has("win64")
  set runtimepath^=~\vimfiles runtimepath+=~\vimfiles\after 
elseif has("unix")
  set runtimepath^=~/.vim runtimepath+=~/.vim/after
endif
let &packpath=&runtimepath
source ~\.vimrc
