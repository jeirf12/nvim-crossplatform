"Rulers Plugins installed

"activa o desactiva el autocorrector al entrar y salir de un .txt respectivamente
autocmd BufEnter *.txt set spell spelllang=en,es
autocmd BufLeave *.txt set nospell

"Save folds on exit and load them on edit
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?* silent! loadview 

"Recordar ultima linea del archivo
if has("autocmd")
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |  exe "normal g`\"" |  endif
endif

au FileType gitcommit let b:EditorConfig_disable = 1

"Format sql
autocmd BufFilePre *.sql :CocCommand sql.Format

"Rulers doxygen
let g:load_doxygen_syntax=1

"Rulers python3
let g:python3_host_prog = 'C:\Windows\py.exe'

"OMNIFUNC COMPLETE VIM
autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete

"Rulers Commentary
autocmd FileType apache setlocal commentstring=#\ %s

"Rulers ident line
let g:identLine_char_list = ['│', '┊']

"THEMES VIM SETTINGS
"************************************
"Rulers gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"Rulers archery
"colorscheme archery

"***************************************

"Rulers Nerdtree
let NERDTreeQuitOnOpen = 1

"Rulers TagBar Autoclose
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

"Rulers kite
let g:kite_supported_languages = ['javascript', 'python']
let g:kite_tab_complete = 1
" let g:kite_documentation_continual=1

"Rulers COC
"if you want to install more coc supports place them inside the array or else
"with coc-install
let g:coc_global_extensions = ['coc-json', 'coc-tsserver']
autocmd FileType python left b:coc_suggest_disable = 1
autocmd FileType javascript left b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@@-@

"Don´t pass messages to |ins-completion-menu|
" set shortmess+=c

"enable format json a nvim
autocmd FileType json syntax match Comment +\/\/.\+$+

"html, 2SX
let g:closetag_filenames = '*.html, *.js, *.jsx, *.ts, *.tsx'

"Rulers lightline
let g:lightline = {
	\'active':{
	\   'left': [['mode'], [], ['relativepath', 'modified']],
	\   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
	\},
	\'inactive': {
	\   'left': [['inactive'], ['relativepath']],
	\   'right': [['bufnum']]
	\},
	\'component': {
	\   'bufnum': '%n',
	\   'inactive': 'inactive'
	\},
	\'component_function': {
	\   'gitbranch': 'gitbranch#name',
	\   'kitestatus': 'kite#statusline'
	\},
	\'colorscheme': 'gruvbox',
	\'subseparator': {
	\   'left': '',
	\   'right': ''
	\},
	\}
