" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
 
" Make sure you use single quotes
 
 
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
 
 
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 
" Unmanaged plugin (manually installed and updated)
 
Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
Plug 'raimondi/delimitmate'
 
" Initialize plugin system
call plug#end()

set encoding=utf-8

map <F9> :w<CR>:!python %<CR>
vnoremap yy :w !xclip -selection clipboard<CR><CR>
map <C-n> :NERDTreeToggle<CR>
map <F7> :w<CR>:!bash %<CR>
map <F5> :w<CR>:!gcc % && ./a.out<CR>
