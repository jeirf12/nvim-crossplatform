"Rulers Plugins installed

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
let g:kite_auto_complete = 1

"Rulers COC
autocmd FileType python left b:coc_suggest_disable = 1
autocmd FileType javascript left b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

"html, 2SX
let g:closetag_filenames = '*.html, *.js, *.jsx, *.ts, *.tsx'

"Rulers lightline
let g:lightline = {
	\'active':{
	\   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
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
