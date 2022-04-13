"Rulers Plugins installed

"Rulers fzf layout
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

"fix double dolars php
autocmd FileType php set iskeyword+=$
autocmd FileType php setlocal omnifunc=lsp#complete

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
let g:python_host_prog = system.python_host_prog
let g:python3_host_prog = system.python3_host_prog

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
" colorscheme archery

"***************************************

"Rulers Nerdtree
let NERDTreeQuitOnOpen = 1

"Rulers TagBar Autoclose
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1

"Rulers kite
" let g:kite_supported_languages = ['javascript', 'python']
" let g:kite_tab_complete = 1
" let g:kite_completion_max_width = 50

"Rulers COC
"if you want to install more coc supports place them inside the array or else
"with coc-install
autocmd FileType python left b:coc_suggest_disable = 1
autocmd FileType javascript left b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@@-@
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-emmet', 'coc-clangd']

"Don´t pass messages to |ins-completion-menu|
" set shortmess+=c

"enable format json a nvim
autocmd FileType json syntax match Comment +\/\/.\+$+

"html, 2SX
let g:closetag_filenames = '*.html, *.js, *.jsx, *.ts, *.tsx'

"Rulers lightline
let g:lightline = {
    \'active':{
    \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
    \   'right': [['kitestatus', 'fileformat'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
    \},
    \'inactive': {
    \   'left': [['inactive'], ['relativepath']],
    \   'right': [['bufnum']]
    \},
    \'component': {
    \   'bufnum': '%n',
    \   'inactive': 'inactive',
    \},
    \'component_function': {
    \   'gitbranch': 'gitbranch#name',
    \   'kitestatus': 'kite#statusline',
    \   'filetype': "MyFiletype",
    \   'fileformat': "MyFileformat",
    \},
    \'colorscheme': 'gruvbox',
    \'separator': { 'left': '', 'right': '' },
    \'subseparator': { 'left': '', 'right': '' },
    \}
