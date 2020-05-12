call plug#begin('/home/adrien/.local/share/nvim/site/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'shougo/deoplete'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

"General Vim Configs
"tabstop = 4 spaces, shiftwidth = 4 spaces
set tabstop=4 shiftwidth=4 expandtab
set number
set termguicolors
set completeopt -=preview

"python environment configs
let g:python3_host_prog = '/home/adrien/.local/share/nvim/site/neovim-venv/bin/python'

" NERDTree configs
autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1

"ALE configs
let g:ale_linters = {
\ 	'javascript':['eslint'],
\   'rust':['rls']
\}
let b:ale_fixers = {
\   'rust':['rustfmt']
\}

"deoplete configs
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 100

"Colour configs
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
colorscheme gruvbox

"Keymappings
noremap <space> <nop>
map <space> <leader>

"f for file
nmap <silent> <leader>f :NERDTreeToggle <CR>
nmap <silent> <leader>fr :NERDTreeRefreshRoot <CR>

"t for terminal
nmap <silent> <leader>t :split<CR><C-w>j<CR>:terminal<CR>a
:tnoremap <esc> <C-\><C-n>

"Space-w to switch between windows
nmap <silent> <leader>w <C-w>w
nmap <silent> <leader><S-w> <C-w>p

"Comments
"We need a python3 venv environment (g:python3_host-prog) with pynvim install.
"(pip3 install pynvim). Doesn't matter where it is, as long as the path is
"correct in this file
"
"npm package neovim needs to be installed (npm install -g neovim)
