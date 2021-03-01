"Rulers Plugins installed

"Rulers python3
let g:python3_host_prog = 'C:\Python39\python.exe'

"OMNIFUNC COMPLETE VIM
autocmd FileType * setlocal omnifunc=syntaxcomplete#Complete

"Rulers Commentary
autocmd FileType apache setlocal commentstring=#\ %s

"Rulers ident line
let g:identLine_char_list = ['│', '┊']

"Rulers gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

"Rulers Nerdtree
let NERDTreeQuitOnOpen = 1

"Rulers TagBar Autoclose
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

"Rulers kite
let g:kite_supported_languajes = ['javascript', 'python']

"Rulers COC
autocmd FileType python left b:coc_suggest_disable = 1
autocmd FileType javascript left b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@
"Don´t pass messages to |ins-completion-menu|
set shortmess+=c

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
