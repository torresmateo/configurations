" reload vimrc :so % 
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" Required by Vundle
filetype off

" set the runtime path to include Vundle and initalize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

" NERDTree
Plugin 'scrooloose/nerdtree'

" Syntastic
" Plugin 'scrooloose/syntastic'

" Powerline
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Vim Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Vim-Jinja2-Syntax
Plugin 'Glench/Vim-Jinja2-Syntax'

" Multiple Cursors
" Plugin 'terryma/vim-multiple-cursors'
" required by Vundle
call vundle#end()

" required by Vundle
filetype plugin indent on

" decent tabs
set tabstop=4
set shiftwidth=4
set expandtab


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Powerline
set laststatus=2
set showtabline=2
set noshowmode

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"" Syntastic linters
"let g:syntastic_javascript_checkers = ['jscs']

" Color Scheme
colorscheme onedark

set term=xterm-256color
syntax on
" Default Font
set guifont=Source\ Code\ Pro\ for\ Powerline:h13

" .md files are markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
