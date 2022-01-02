if has('win32') || has('win64')
  let pathConfig=stdpath('config').'\'
elseif has('unix')
  let pathConfig=stdpath('config').'/'
endif
"Settings Globals
" source ~\AppData\Local\nvim\configGlobal.vimrc
exe 'source '.pathConfig.'configNative.vimrc'

"Settings Plugins
" source ~\AppData\Local\nvim\configPlugin.vimrc
exe 'source '.pathConfig.'configPlugins.vimrc'

"settings Rules Plugins
" source ~\AppData\Local\nvim\configRulerPlugin.vimrc
exe 'source '.pathConfig.'configRulers.vimrc'

"Settings Command
" source ~\AppData\Local\nvim\configCommand.vimrc
exe 'source '.pathConfig.'configCommands.vimrc'

"Settings Customs Functions
" source ~\AppData\Local\nvim\configFunctions.vimrc
exe 'source '.pathConfig.'configFunctions.vimrc'
