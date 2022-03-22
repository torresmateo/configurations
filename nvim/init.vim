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
Plugin 'scrooloose/syntastic'

" Vim airline, replacement of Powerline because it is faster
Plugin 'bling/vim-airline'

" Vim Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Python Folding
Plugin 'tmhedberg/SimpylFold'

" Vim-Jinja2-Syntax
Plugin 'Glench/Vim-Jinja2-Syntax'

" Windows swap
Plugin 'wesQ3/vim-windowswap'

" Rust language support 
Plugin 'rust-lang/rust.vim'

" gruvox color scheme
Plugin 'morhetz/gruvbox'

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
"set laststatus=2
"set showtabline=2
"set noshowmode

" Vim airline
let g:airline_powerline_fonts = 1

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"" Syntastic linters
"let g:syntastic_javascript_checkers = ['jscs']

" Color Scheme
" colorscheme onedark
colorscheme gruvbox
let g:gruvbox_italic=1

" set term=xterm-256color

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

syntax enable
" Default Font
" set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set guifont=Monaco:h11

" .md files are markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
" .tex files are latex
" let g:tex_flavor = "latex"

set spell spelllang=en_gb
set nospell

" command that inserts the current time and date in a decent format
command! Date r !date +'\%F \%R:\%S'

" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''
set mouse=a
