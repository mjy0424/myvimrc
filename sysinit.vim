call plug#begin('C:\Users\mjy_0\Appdata\Local\nvim-data\plugged')
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

Plug 'airblade/vim-gitgutter'
let g:gitgutter_git_executable = 'D:\wk\Git\bin\git.exe'

Plug 'pprovost/vim-ps1'

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentline'
call plug#end()

set number
set relativenumber
set ignorecase

command Pinst PlugInstall
command Pclean PlugClean
command Pup PlugUpdate
command Ntr NERDTree

let mapleader = "-"
let maplocalleader = "\\"
inoremap jk <esc> 
inoremap <esc> <nop>
nnoremap <down> <nop>
nnoremap <up> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
noremap <leader>f :LeaderfFile<ENTER>
noremap <leader>l :LeaderfLine<ENTER>
nnoremap <leader>ev :vsplit D:\wk\neovim\share\nvim\sysinit.vim<ENTER>
nnoremap <leader>sv :source D:\wk\neovim\share\nvim\sysinit.vim<ENTER>

iabbrev adn and
iabbrev eml mjy_0424@163.com

augroup filetype_html
    autocmd!
    autocmd BufWritePre,BufRead *.html :normal gg=G
augroup END
