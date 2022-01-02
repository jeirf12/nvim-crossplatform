if has('win32') || has('win64')
  let pathPlugin='~\plugged'
elseif has('unix')
  let pathPlugin="~/.vim/plugged"
endif
call plug#begin(pathPlugin)
"Themes
Plug 'morhetz/gruvbox'
" Plug 'Badacadabra/vim-archery'

"IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

"autocomplete - COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"lightline - status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

"tagbar
Plug 'preservim/tagbar'

"git branch
Plug 'itchyny/vim-gitbranch'

"Ident line
Plug 'yggdroot/indentline'

"Vim-Commentary
Plug 'tpope/vim-commentary'

"vim surround
Plug 'tpope/vim-surround'

"vim auto-pairs
Plug 'jiangmiao/auto-pairs'

"Polyglot
Plug 'sheerun/vim-polyglot'

"Emmet completion html
Plug 'mattn/emmet-vim'

Plug 'whiteinge/diffconflicts'

"Editor config
Plug 'editorconfig/editorconfig-vim'

" Search fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"Run test
Plug 'vim-test/vim-test'

" diff file
Plug 'mhinz/vim-signify'

" close tag html
Plug 'alvan/vim-closetag'

" php completion
Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

call plug#end()
