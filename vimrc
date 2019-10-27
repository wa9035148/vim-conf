"  Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'powerline/fonts'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'juneedahamed/svnj.vim'
Plug 'vim-scripts/VisIncr'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Initialize plugin system
Plug 'junegunn/vim-easy-align'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"--- Default Setting ---"
let g:indentLine_enabled = 1
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
set hlsearch
set nu
set encoding=UTF-8
"set fillchars=vert:\
set expandtab
set shiftwidth=2
set tabstop=8
set noswapfile
autocmd BufWritePre * %s/\s\+$//e

"--- AirLine ---"
let g:airline_powerline_fonts = 1
let g:airline_theme='onehalfdark'
let g:airline_section_='%F'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = "ABC"

"--- shortcuts ---"
nmap ,l :IndentLinesToggle<CR>
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-l> <c-w>l
map <c-p> :CtrlP<CR>
map <c-n> :bn<CR>

"--- CtrlP ---"
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

"--- webdevicons ---"
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
"let g:WebDevIconsNerdTreeGitPluginForceVAligh = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

"--- nerdtree ---"
nmap ,n :NERDTreeToggle<CR>
nmap ,v :NERDTreeFind<CR>
"let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

"--- webdevicons ---"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"--- GIT ---"
map <F5> :!git status<CR>
map <F6> :!git diff --color %<CR>
map <F7> :!git add %<CR>
map <F8> :!git commit<CR>

"--- QuickFix ---"
map <F9> :make<CR>
map <F10> :vim // ../../**<CR>
map <F11> :cn<CR>
map <F12> :co<CR>

"--- Ctags ---"
set tags=tags
set tags+=../tags
nnoremap ,i :VerilogGotoInstanceStart<CR>

