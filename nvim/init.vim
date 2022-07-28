call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" LSP
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/lsp_extensions.nvim'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Telescope (plenary is a requirement)
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Airline
Plug 'bling/vim-airline'

" gruvox color scheme
Plug 'morhetz/gruvbox'

" Tiltfile recognition
Plug 'cappyzawa/starlark.vim'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" decent tabs
set tabstop=4
set shiftwidth=4
set expandtab

let g:airline_powerline_fonts = 1

" Color Scheme
" colorscheme onedark
colorscheme gruvbox
let g:gruvbox_italic=1

" Set completeopt to have a better completion experience
" "help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to selec one from the menu
set completeopt=menuone,noinsert,noselect


" " Configure lsp
" " https://github.com/neovim/nvim-lspconfig#rust_analyzer
" lua <<EOF
" 
" -- nvim_lsp object
" local nvim_lsp = require'lspconfig'
" 
" local capabilities = vim.lsp.protocol.make_client_capabilities()
" capabilities.textDocument.completion.completionItem.snippetSupport = true
" 
" -- Enable rust_analyzer
" nvim_lsp.rust_analyzer.setup({
"     capabilities=capabilities,
"     -- on_attach is a callback called when the language server attachs to the buffer
"     -- on_attach = on_attach,
"     settings = {
"       -- to enable rust-analyzer settings visit:
"       -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
"       ["rust-analyzer"] = {
"         -- enable clippy diagnostics on save
"         checkOnSave = {
"           command = "clippy"
"         },
"       }
"     }
" })
" 
" -- Enable diagnostics
" vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
"   vim.lsp.diagnostic.on_publish_diagnostics, {
"     virtual_text = false,
"     signs = true,
"     update_in_insert = true,
"   }
" )
" EOF
" 
" " Enable type inlay hints
" autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
" \ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
" 
