set nocompatible              " be iMproved, required
filetype off                  " required

""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
" https://github.com/junegunn/vim-plug
""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" vim-airline
Plug 'bling/vim-airline'

" Markdowbn Syntax
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Adds git status to line
Plug 'airblade/vim-gitgutter'

" Solarazied colors
Plug 'altercation/vim-colors-solarized'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
" Plugin specific configurations
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""
" vim-markdown
""""""""""""""""""""""""""""""""""""""""""""""
" disable folding
let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""""""""""""""""""
" vim-airline
""""""""""""""""""""""""""""""""""""""""""""""
" Tab line for vim-airline
let g:airline#extensions#tabline#enabled = 1
" Powerline fonts
let g:airline_powerline_fonts = 1
"let g:airline#extensions#syntastic#enabled = 1

""""""""""""""""""""""""""""""""""""""""""""""
" Generic Vim Configuration
""""""""""""""""""""""""""""""""""""""""""""""

" Always show status line
set laststatus=2

" KeyMappings
" Move to next buffer
nmap <C-l> :bnext<CR>

" Move to previous buffer
nmap <C-h> :bprevious<CR>

" Don't put automatic comments in
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set hidden

" Let me backspace everything
set backspace=indent,eol,start

" Lines in history
set history=700

" Filetype plugins
filetype plugin on
"filetype indent on

" Give me a ruler
set ruler

" Syntax highlight
syntax enable
set background=dark

" No tabs
set expandtab
set smarttab

" 1 tab is 2 spaces
set shiftwidth=2
set tabstop=2

" Show Line Numbers
set number

" Map tab to autocomplete
" imap <Tab> <C-P>

" Use bash style autocomplete
set wildmode=longest,list

" Show hidden files
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" %% will expand to the directory of the current file
cabbr %% <C-R>=expand('%:p:h')<CR>

"function to switch between abs and rel line numbers
"use C-n to switch
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

" Toggle paste mode with <F2>
set pastetoggle=<F2>

" Turn on spellchecking for .md files
" This just gets a bit to gnarly for tech posts
" zg is how to add words, that might help
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md setlocal tw=79
autocmd BufRead,BufNewFile *.md setlocal formatoptions+=t
