
" Vim Plug
call plug#begin('~/.vim/plugged')
" Plugins ∨ 

Plug 'dracula/vim'
Plug 'zah/nim.vim'
Plug 'rakr/vim-one'
Plug 'dylanaraps/wal'
Plug 'ElmCast/elm-vim'
Plug 'morhetz/gruvbox'
Plug 'cespare/vim-toml'
Plug 'rhysd/vim-crystal'
Plug 'reedes/vim-pencil'
Plug 'romainl/Apprentice'
Plug 'quabug/vim-gdscript'
Plug 'scrooloose/nerdtree'
Plug 'tikhomirov/vim-glsl'
"Plug 'luochen1990/rainbow'
Plug 'leafo/moonscript-vim'
Plug 'flazz/vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-airline/vim-airline'
Plug 'neovimhaskell/haskell-vim'
Plug 'guns/vim-clojure-highlight'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'

" Plugins ^
call plug#end()
" Vim Plug

" Other Settings
let mapleader = ','     " Rebind <leader>
set number              " Enable line numbers
set nowrap              " Disable line wrapping
set laststatus=2        " Show Airline all the time
set expandtab           " Use spaces instead of tabs
syntax on               " Enable syntax highlighting
set softtabstop=4       " Remove space "tabs" with backspace
set hidden              " Allow modified buffers to be hidden
set tabstop=4           " Change the width of the TAB character
set shiftwidth=4        " Set the amount of spaces to shift on >>, <<, ==

command TabTwo execute "set tabstop=2 | set softtabstop=2 | set shiftwidth=2"
command TabFour execute "set tabstop=4 | set softtabstop=4 | set shiftwidth=4"

" Key Bindings
noremap <silent><C-h>   :wincmd h<CR>
noremap <silent><C-j>   :wincmd j<CR>
noremap <silent><C-k>   :wincmd k<CR>
noremap <silent><C-l>   :wincmd l<CR>

nmap <leader>n          :NERDTreeToggle %<CR>
nmap <leader>m          :NERDTree .<CR>

nmap <leader>t          :enew<CR>
nmap <Tab>              :bnext<CR>
nmap <S-Tab>            :bprevious<CR>

nmap <leader>bd         :bp <BAR> bd #<CR>
nmap <leader>bl         :ls<CR>

" Show colored parens by default.
let g:rainbow_active = 1

" Show buffers instead of tabs in Airline and only show filename.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Commands for debugging syntax highlighting.
function! GetSyntaxID()
    return synID(line('.'),col('.'),1)
endfunction

function! GetSyntaxParentID()
    return synIDtrans(GetSyntaxID())
endfunction

function! GetSyntax()
    echo synIDattr(GetSyntaxID(), 'name')
    exec "hi ".synIDattr(GetSyntaxParentID(), 'name')
endfunction

" Colorscheme - Gruvbox
"colorscheme gruvbox
"set background=dark

" Colorscheme - One Light
"colorscheme one
"set background=light
"let g:airline_theme='one'

" Colorscheme - Wal (wallpaper based)
colorscheme wal
let g:airline_theme='wal'
hi Normal ctermbg=black

" Transparent background
"hi Normal     ctermbg=NONE
"hi NonText    ctermbg=NONE
