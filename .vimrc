"verified system operative current
if has('win32') || has('win64')
  let pathConfig=stdpath('config').'\'
elseif has('unix')
  let pathConfig=stdpath('config').'/'
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
