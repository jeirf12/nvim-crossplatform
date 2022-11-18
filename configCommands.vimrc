"Key leader
let mapleader = " "

let g:user_emmet_leader_key = '<c-z>'

"reload settings vimrc
nmap <Leader><CR> :source $MYVIMRC<CR>

nnoremap <Leader>t :TestNearest<CR>
nnoremap <Leader>T :TestFile<CR>
nnoremap <Leader>TT :TestSuite<CR>

"resize windows
nmap <Leader>l  <c-w>>
nmap <Leader>h  <c-w><
nmap <leader>j  <c-w>+
nmap <leader>k  <c-w>-
nmap <Leader>i  <c-w>=
nmap <Leader>a  <c-w>\|

"Format Document Prettier
nmap <Leader>f :CocCommand prettier.formatFile<CR>

"Command doc-kite
nmap <silent><buffer> gk <Plug>(kite -docs)

"Command from open terminal down
nmap <C-t> :call OpenTerminal(editor)<CR>
nmap <c-a> :call ActiveLanguage()<CR>

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

"Command jump next buffer
nmap <Leader><Tab> :bnext<CR>

"Command jump previous buffer
nmap <Leader><left> :bp<CR>

"Command close buffer
nmap <Leader>c :bd<CR>

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

" if &filetype == "javascript" || &filetype == "python"
if &filetype == "python"
  inoremap <c-Space> <C-x><C-u>
else
  inoremap <silent><expr> <c-Space> coc#refresh()
  " Make <CR> to accept selected completion item or notify coc.nvim to format
  " <C-g>u breaks current undo, please make your own choice.
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
endif

" inoremap <silent><expr> <c-Space> coc#refresh()
