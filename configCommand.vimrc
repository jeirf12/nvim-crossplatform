"Key leader
let mapleader = " "

"Command doc-kite
nmap <silent> <buffer> gk <Plug> (kite -docs)

"Command from open terminal down
nmap <c-t> :split<CR>:term<CR>:resize 14<CR>i

"Command easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"Command NerdTree
nmap <Leader>nt :NERDTreeFind<CR>

"Command save
nmap <Leader>w :w<CR>

"Command exit
nmap <Leader>q :q<CR>

"Command create new tab
nmap <Leader>tn :tabnew

"Command jump next tab
nmap <Leader><TAB> :tabnext<CR>

"Command jump previous tab
nmap <Leader><left> :tabprev<CR>

"Command close tab
nmap <Leader>c :tabclose<CR>

"Command install Plug
nmap <Leader>pi :PlugInstall<CR>

"Command open TagBar
nmap <Leader>tbo :TagbarOpen<CR>

"Command COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

if &filetype == "javascript" || &filetype == "python"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif
