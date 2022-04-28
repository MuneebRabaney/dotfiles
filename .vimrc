syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set number
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=35
set guicursor+=n:hor20-Cursor/lCursor

set colorcolumn=170
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
  
  " Plebvim lsp Plugins
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
  
  " Debugger Plugins
  Plug 'mfussenegger/nvim-dap'
  Plug 'Pocco81/DAPInstall.nvim'
  Plug 'szw/vim-maximizer'
  
  " Snippets
  Plug 'rafamadriz/friendly-snippets' 
  Plug 'rust-lang/rust.vim'
  Plug 'darrikonn/vim-gofmt'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'junegunn/gv.vim'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-dispatch'
  " Plug 'theprimeagen/vim-be-good'
  " Plug 'morhetz/gruvbox'gruvbood'
  Plug 'gruvbox-community/gruvbox'
  Plug 'luisiacc/gruvbox-baby'
  Plug 'tpope/vim-projectionist'
  Plug 'tomlion/vim-solidity'
  Plug 'vim-airline/vim-airline' 
  
  Plug 'jremmen/vim-ripgrep'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-dispatch'
  Plug 'leafgarland/typescript-vim'
  Plug 'vim-utils/vim-man'
  Plug 'mbbill/undotree'
  Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}

  Plug 'tomlion/vim-solidity'

  " HARPOON!!
  Plug 'mhinz/vim-rfc'
  
  Plug 'vim-conf-live/vimconflive2021-colorscheme'
  Plug 'flazz/vim-colorschemes'
  Plug 'chriskempson/base16-vim'
  
  " Prettier
  Plug 'sbdchd/neoformat'
  
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
  let g:rg_derive_root='true'
endif

let g:airline_powerline_fonts = 1
let g:ctrlp_user_command=['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-stagged']

let mapleader=' '
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:ctrlp_use_caching=0
let g:netrw_winsize=25

let g:ctrlp_use_caching=0
" let g:material_theme_style='darker'
" let g:material_termail_italics=1
" let g:material_termail_italics='community-darker'

let g:lightline={ 'colorscheme': '_vim' }

let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

set guicursor=n-ci:hor30-iCursor-blinkwait300-blinkon200-blinkoff150

augroup scroll
  au!
  au VimEnter * :silent !synclient VertEdgeScroll=0
  au VimLeave * :silent !synclient VertEdgeScroll=1
augroup END

augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

