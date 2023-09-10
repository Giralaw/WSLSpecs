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

call plug#end()

let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options = '-reuse-instance @pdf'
" let g:vimtex_view_general_options_latexmk = '-reuse-instance'
let g:tex_flavor = 'latex'
let g:vimtex_motion_matchparen = 0
let g:vimtex_fold_manual = 1
let g:vimtex_matchparen_enabled = 0
set conceallevel=1
let g:tex_conceal='abdmg'

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

syntax enable
colorscheme onedark
" colorscheme wal
set background=dark
