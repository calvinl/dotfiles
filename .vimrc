colorscheme Tomorrow-Night
set transparency=6
set guioptions=aAce
set guifont="Operator Mono":h11
syntax on
filetype on
au BufNewFile,BufRead *.hjs set filetype=handlebars
au BufNewFile,BufRead *.mobile.erb set filetype=eruby

let NERDTreeShowHidden=1

" make ctrlp exclude files untracked files (e.g. node_modules, etc.)
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Work around FIFO files + NERDTree + Janus bug described:
" https://github.com/scrooloose/nerdtree/issues/139
autocmd! AuNERDTreeCmd FocusGained

" map j-k to ESC key
imap jk <Esc>
