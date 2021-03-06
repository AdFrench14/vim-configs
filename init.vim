call plug#begin('/home/afrench/.local/share/nvim/site/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'airblade/vim-gitgutter'
call plug#end()

"General Vim Configs
"tabstop = 4 spaces, shiftwidth = 4 spaces
set tabstop=4 shiftwidth=4 expandtab
set number
set termguicolors
set completeopt -=preview

"python environment configs
let g:python3_host_prog = '/home/afrench/.local/share/nvim/site/neovim-venv/bin/python'

" NERDTree configs
autocmd vimenter * NERDTree
let NERDTreeShowHidden = 1

"COC configs
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-rls'
  \ ]

"COC - use Tab and Shift-Tab to navigate suggestions
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

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
"
"Run this to make sure Vim Plug is installed
"sh -c 'curl -fLo '${XDG_DATA_HOME:-$HOME/.local/share}'/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
