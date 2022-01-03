if has('win32') || has('win64')
  let value = readfile(glob('~\\AppData\\Local\\nvim\\config.json'))
elseif has('unix')
  let value = readfile(glob('~/.config/nvim/config.json'))
endif

let system = json_decode(join(value))

" Validate system operative
if has('win32') || has('win64')
  let system = system.windows 
elseif has('unix')
  let g:system = system.linux
endif

" Validate editor system
if has('nvim')
  let editor = system.nvim
  let editor.pathConfig = eval(editor.pathConfig)
else 
  let editor = system.vim
endif

set runtimepath^=system.runtimepath runtimepath+=system.after
let &packpath=&runtimepath
execute 'source '.editor.pathConfig.'.vimrc'
