"Get path config editor settings
let pathConfig = editor.pathConfig

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
