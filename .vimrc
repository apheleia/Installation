execute pathogen#infect()

if has("autocmd")
  filetype on
  filetype indent on
  filetype plugin on
endif

syntax on

set number

set t_Co=256
colorscheme sahara

"set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Open and close NerdTree with F3
nmap <F3> :NERDTreeToggle<CR>

" Open and close TagBar with F4
nmap <F4> :TagbarToggle<CR>

" Automatically update tags when saving file
au BufWritePost *.go silent! !ctags -R -f .git/tags &

" Also show .md as markdown
au BufRead,BufNewFile *.md set filetype=markdown
