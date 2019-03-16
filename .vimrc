
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .vimrc
" A basic and clean vim configuration with vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'zah/nim.vim'
Plug 'junegunn/fzf'
Plug 'elzr/vim-json'
Plug 'jdonaldson/vaxe'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sleuth'
Plug 'cespare/vim-toml'
Plug 'udalov/kotlin-vim'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-abolish'
Plug 'godlygeek/csapprox'
Plug 'tpope/vim-sensible'
Plug 'bfrg/vim-cpp-modern'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'calviken/vim-gdscript3'
Plug 'flazz/vim-colorschemes'
Plug 'idris-hackers/idris-vim'
Plug 'mgee/lightline-bufferline'
Plug 'neovimhaskell/haskell-vim'
call plug#end()

" editor settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set hidden
set t_Co=256
set tabstop=4
set splitbelow
set splitright
set shiftwidth=4
set guioptions-=e
set showtabline=2
"set background=dark
"colorscheme gruvbox
set background=light
colorscheme seoul256-light
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab

let c_no_curly_error=1

" keybindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

nnoremap <C-p> :Files<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

nnoremap gt :bn<CR>
nnoremap gT :bp<CR>

" lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'mode_map': {
		\ 'n': 'N',
		\ 'i': 'I',
		\ 'R': 'R',
		\ 'v': 'V',
		\ 'V': 'V',
		\ "\<C-v>": 'V',
		\ 's': 'S',
		\ 'S': 'S',
		\ "\<C-s>": 'S',
		\ }
	\ }
let g:lightline.tabline = {
	\ 'left': [['buffers']],
	\ 'right': [['close']]
	\ }
let g:lightline.component_expand = {
	\ 'buffers': 'lightline#bufferline#buffers'
	\ }
let g:lightline.component_type = {
	\ 'buffers': 'tabsel'
	\ }
let g:lightline#bufferline#filename_modifier = ':t'

" gui
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
	set guifont=Iosevka\ Term:h12
endif

