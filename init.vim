filetype plugin indent on

" autocmd BufWritePre *.js :normal gggqG

call plug#begin('~/.local/share/nvim/site/plugged')
" status bar

" Plug 'sbdchd/neoformat'

Plug 'itchyny/lightline.vim'

" linter
" Plug 'w0rp/ale'
" Plug 'vim-syntastic/syntastic'

" LSP
Plug 'neovim/nvim-lspconfig'

" linter update
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

" autocomplete
" Plug 'Valloric/YouCompleteMe'

" LaTeX
" Plug 'lervag/vimtex'

" Theme
Plug 'morhetz/gruvbox'

" Indent lines
Plug 'Yggdroot/indentLine'


" Plug 'godlygeek/tabular'

" Plug 'plasticboy/vim-markdown'

call plug#end()

let g:lightline = {
    \ 'colorscheme': 'seoul256',
    \ 'separator' : { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' },
    \ 'active': {
    \   'left':  [ [ 'mode', 'paste' ],
    \              [ 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'filetype' ] ]
    \ },
    \ 'component_function': {
    \   'filename': 'FilenameForLightline'
    \ }
    \ }

function! FilenameForLightline()
    return expand('%')
endfunction

" autocmd FileType javascript setlocal formatprg=prettier\ --trailing-comma\ es5\ --arrow-parens\ avoid\ --print-width\ 60\ --parser\ babel\ --jsx-ignore-line-break
" Use formatprg when available
" autocmd BufWritePre *.ts Neoformat
" autocmd BufWritePre *.js Neoformat
" let g:neoformat_verbose = 1
" let g:neoformat_try_formatprg = 1


" lua require('config')
" 
" lua <<EOF
" require("null-ls").setup({
"     sources = {
"         require("null-ls").builtins.formatting.stylua,
"         require("null-ls").builtins.diagnostics.eslint,
"         require("null-ls").builtins.completion.spell,
"         require("null_ls").builtins.formatting.prettierd,
"     },
" })
" EOF
"
set clipboard+=unnamedplus

syntax enable
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

imap jj <Esc>

set noshowmode
set ignorecase
set smartcase

set noerrorbells visualbell t_vb=

set nu rnu

set foldmethod=indent
set foldlevel=1
set foldnestmax=3

set shiftwidth=2
set softtabstop=2
set expandtab

noremap <c-z> <Nop>
nnoremap j gj
nnoremap k gk

nnoremap <silent> <A-k> :wincmd k<CR>
nnoremap <silent> <A-j> :wincmd j<CR>
nnoremap <silent> <A-h> :wincmd h<CR>
nnoremap <silent> <A-l> :wincmd l<CR>

set number
set norelativenumber

autocmd InsertEnter,InsertLeave * set cul!
autocmd Filetype rmd map <F5> :!echo<space>"library(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype tex map <F5> :!echo<space>'<c-r>%'<space>\|<space>latexmk<space>-pdf<enter>
