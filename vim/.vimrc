" BASIC SETTINGS
" ---------------------------
set nocompatible            " Disable compatibility with old vi
syntax on                   " Enable syntax highlighting
filetype plugin indent on   " Enable filetype detection and indentation
set number                  " Show line numbers
set relativenumber          " Show relative line numbers
set showcmd                 " Show command in bottom bar
set cursorline              " Highlight current line
set wildmenu                " Visual autocomplete for command menu
set lazyredraw              " Don't redraw while executing macros
set showmatch               " Highlight matching [{()}]
set clipboard=unnamedplus   " Use system clipboard for copy-paste

" ---------------------------
" SEARCHING
" ---------------------------
set ignorecase              " Case insensitive search
set smartcase               " Case-sensitive if uppercase letters used
set incsearch               " Show search matches as you type
set hlsearch                " Highlight search results

" --------------------------
"  PLUGINS
"  -------------------------
call plug#begin()
Plug 'catppuccin/vim', {'as':'catppuccin'}
call plug#end()

" ---------------------------
" INDENTATION
" ---------------------------
set autoindent
set smartindent
set tabstop=4               " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4            " Number of spaces to use for each step of (auto)indent
set expandtab               " Use spaces instead of tabs

" ---------------------------
" USER INTERFACE
" ---------------------------
"set background=dark         " Use dark background
 "colorscheme elflord " Use desert colorscheme (comes with Vim)
set termguicolors
colorscheme catppuccin_mocha
set scrolloff=8             " Start scrolling 8 lines from top/bottom
set sidescrolloff=15
set splitbelow              " Horizontal splits will open below
set splitright              " Vertical splits will open to the right

" ---------------------------
" BACKUP AND SWAP
" ---------------------------
set nobackup
set nowritebackup
set noswapfile

" ---------------------------
" MAPPINGS FOR CLIPBOARD
" ---------------------------
" Copy to clipboard
vnoremap <C-c> "+y
nnoremap <C-c> "+yy
" Paste from clipboard
nnoremap <C-v> "+p
inoremap <C-v> <C-r>+

" ---------------------------
" QUALITY OF LIFE
" ---------------------------
set mouse=a                 " Enable mouse support
set hidden                  " Allow switching buffers without saving
set updatetime=300          " Faster completion
set signcolumn=yes          " Always show signcolumn to avoid text shifting

" ---------------------------
" CUSTOM COMMANDS / SHORTCUTS
" ---------------------------
nnoremap <Space> :noh<CR>   " Clear search highlight with spacebar


