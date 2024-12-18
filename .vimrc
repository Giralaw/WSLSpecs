set belloff=all
set number
set shiftwidth=2
set tabstop=2
set expandtab
set encoding=utf-8

set history=1000


syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'KeitaNakamura/tex-conceal.vim'
    hi Conceal ctermbg=none

Plug 'lervag/vimtex'
Plug 'joshdick/onedark.vim'

Plug 'dylanaraps/wal'

Plug 'preservim/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'moll/vim-bbye'

" Plug 'jistr/vim-nerdtree-tabs'

call plug#end()

let g:vimtex_view_general_viewer = 'Okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" let g:vimtex_view_general_options_latexmk = '-reuse-instance'
" let g:tex_flavor = 'latex'
let g:vimtex_motion_matchparen = 0
let g:vimtex_fold_manual = 1
let g:vimtex_matchparen_enabled = 0
set conceallevel=1
let g:tex_conceal='abdmg'

setlocal nospell
set spelllang=en_us
" if spellcheck is on,
" this corrects the last 'incorrect' word without moving the cursor
" I don't think spellcheck is worth all the 'non-words'
" so I'm just gonna leave it off
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" syntax enable

" override to make comments a slightly lighter slightly bluer shade of gray
let g:onedark_color_overrides = {
"\ "background": {"gui": "#2F343F", "cterm": "235", "cterm16": "0" },
\ "comment_grey": { "gui": "#848484", "cterm": "103", "cterm16": "10" }
\}

colorscheme onedark
set background=dark

" makes comments more visible--using cterm override lines above instead to
" have more options, so leaving this here but commented for now
" highlight Comment ctermfg=DarkMagenta

" NERDTree settings-- automatically open when vim is opened, swap control back
" to the file itself, and open nerdtree in every new window
" can possibly replace this with nerdtree-tabs plugin

autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" buffer swapping shortcuts
map gn :bnext<cr>
map gp :bprevious<cr>
map gd :Bd<cr>

" maps \b to open buffer list and search for a given one
" can immediately use tab to autocomplete
nnoremap <leader>b :ls<cr>:b<space>

" folding settings; folds exist at every indent, but none
" automatically appear; zr and zc should fold 
" any positive indent level that you're in
set foldmethod=indent
set foldlevel=99
" this would autoclose folds when you leave them, too aggressive for me
"set foldclose=all


let g:airline#extensions#tabline#enabled =1
let g:airline#extensions#tabline#fnamemod = ':t'
