syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set clipboard+=unnamedplus
set encoding=utf-8
set laststatus=2
set noshowmode
set ttimeout ttimeoutlen=50
set cmdheight=2
set updatetime=300
set shortmess+=c
set hidden
set guicursor=i:block
"set spell spelllang=en_us

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

if has("termguicolors")
    set termguicolors
endif

call plug#begin()
    Plug 'bfrg/vim-cpp-modern'
    Plug 'morhetz/gruvbox'
    Plug 'itchyny/lightline.vim'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" onedark
set background=dark
colorscheme gruvbox
let g:lightline = { 'colorscheme' : 'gruvbox' }

" Make Background Transparent
"hi Normal guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE

" NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>

" COC
let g:coc_default_semantic_highlight_groups = 1

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
