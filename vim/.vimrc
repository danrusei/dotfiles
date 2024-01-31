" If you open this file in Vim, it'll be syntax highlighted for you.

" =============================================================================
" # PLUGINS
" =============================================================================
call plug#begin('~/.vim/plugged')

" GUI Enhancements
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

"Highlight Yanked text , when doing yy
Plug 'machakann/vim-highlightedyank'

"4gcc to comment out 4 lines,
"gcap to comment out a paragraph,
"gc in visual mode to comment out the selection
Plug 'tpope/vim-commentary'               "to comment out line

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Coc installed mainly for Rust-analyzer, Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Initialize plugin system
call plug#end()

" Leader Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "       " leader is space

" Quick-save
nmap <leader>w :w<CR>
nmap <Leader>q :q<CR>

" jk is escape
inoremap jk <esc>

" Jump to start and end of line using the home row keys
map H ^
map L $

" switch windows easily  
nnoremap <tab> <c-w>
nnoremap <tab><tab> <c-w><c-w>

" Turn on syntax highlighting.
syntax on

" Show line numbers.
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" This is useful because you can tell, at a glance, what count is needed to
" jump up or down to a particular line, by {count}k to go up or {count}j to go
" down.
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" NERDTree Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nf :NERDTreeFind<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" FZF.vim Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-p> :Files<CR>
nmap <leader>; :Buffers<CR>

" Coc Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GO settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add missing imports on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

 " Rust settings
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" on save it will apply rustfmt formating
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
