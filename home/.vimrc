" General
set nocp hlsearch ignorecase incsearch smartcase
set noerrorbells visualbell
set ttimeoutlen=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Spacing
set autoindent smartindent shiftround expandtab tabstop=2 shiftwidth=2 cindent smarttab
au Filetype python setl et ts=4 sw=4

" Nav
set scrolloff=5
set backspace=2
set virtualedit=all
set splitbelow
set splitright

" Enable folding
set foldmethod=indent
set foldlevel=99

" Key mappings
imap jj <esc>

nmap <space> :
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ,, za
nmap ;; oRails.logger.info '*'*80<esc>

" Plugins
let g:ctrlp_user_command = 'grep -rl "" --exclude-dir=tmp --exclude-dir=coverage --exclude-dir=".*" %s'

execute pathogen#infect()

" Set some common filetypes
au BufNewFile,BufRead *.erb set ft=eruby
au BufNewFile,BufRead *.jst,*.eco set syntax=jst

" Setting up the directories
set backup                      " backups are nice ...
set backupdir=$HOME/.vimbackup/ " but not when they clog .
set viewdir=$HOME/.vimviews/    " same for view files
set directory=$HOME/.vimswap/   " same for swap files

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'

" Display
set laststatus=2
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n
syntax enable
set number

" colorscheme nuvola
" colorscheme github
" colorscheme ampresent

" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
   set termguicolors
endif
