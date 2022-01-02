"verified system operative current
if has('win32') || has('win64')
  if has('nvim')
    let pathConfig=stdpath('config').'\'
  else
    let g:pathConfig='~\AppData\local\nvim\'
  endif
elseif has('unix')
  if has('nvim')
    let pathConfig=stdpath('config').'/'
  else
    let g:pathConfig='~/.config/nvim/'
  endif
endif


"Settings Globals
exe 'source '.pathConfig.'configNative.vimrc'

"Settings Plugins
exe 'source '.pathConfig.'configPlugins.vimrc'

"settings Rules Plugins
exe 'source '.pathConfig.'configRulers.vimrc'

"Settings Command
exe 'source '.pathConfig.'configCommands.vimrc'

"Settings Customs Functions
exe 'source '.pathConfig.'configFunctions.vimrc'
