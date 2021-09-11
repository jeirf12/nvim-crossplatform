"Key leader
let mapleader = " "

let g:user_emmet_leader_key = '<C-z>'

nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

"split windows open
nmap <Leader>> 10<C-W>>
nmap <Leader>< 10<C-W><

"Format Document Prettier
nmap <Leader>f :CocCommand prettier.formatFile<CR>

"Command doc-kite
nmap <silent><buffer> gk <Plug>(kite -docs)

"Command from open terminal down
" nmap <C-t> :split<CR>:term<CR>-<CR>i<CR>
nmap <C-t> :call OpenTerminal()<CR>

"Command easymotion
nmap <Leader>s <Plug>(easymotion-s2)

"Command NerdTree
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>d :Files<CR>
nmap <Leader>og :Ag<CR>

"Command save
nmap <Leader>w :w<CR>

"Command exit
nmap <Leader>q :q<CR>

"Command create new tab
nmap <Leader>tn :tabnew

"Command jump next tab
nmap <Leader><Tab> :tabnext<CR>

"Command jump previous tab
nmap <Leader><left> :tabprev<CR>

"Command close tab
nmap <Leader>c :tabclose<CR>

"Command install Plug
nmap <Leader>pi :PlugInstall<CR>

"Command update Plug
nmap <Leader>pu :PlugUpdate<CR>

"Command open TagBar
nmap <Leader>tbo :TagbarOpen<CR>

"Command COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

if &filetype == "javascript" || &filetype == "python"
  inoremap <c-Space> <C-x><C-u>
else
  inoremap <silent><expr> <c-Space> coc#refresh()
endif

