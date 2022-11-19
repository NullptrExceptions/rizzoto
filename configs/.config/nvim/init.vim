call plug#begin()                                   
    "Completion
    Plug 'neovim/nvim-lspconfig'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'lambdalisue/vim-cython-syntax'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'rafamadriz/friendly-snippets'
    Plug 'NullptrExceptions/cython-snips/'

    "Theme + Asthetics
    Plug 'sainnhe/gruvbox-material'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'feline-nvim/feline.nvim'
    Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
    Plug 'lewis6991/gitsigns.nvim'

    "Tools
    Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
    Plug 'kyazdani42/nvim-tree.lua'

call plug#end()

"CoC extensions
let g:coc_global_extensions = ['coc-snippets']

"Theme
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
colorscheme gruvbox-material

"Bufferline
nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>]b :BufferLineCyclePrev<CR>
nnoremap <F2> :bnext<CR>
nnoremap <F3> :bprevious<CR>

"Neotree
nnoremap <F5> :NvimTreeToggle<CR>

"Tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"Misc
:set number
:set mouse=a

"Completion key
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

"Misc lua config
luafile $HOME/.config/nvim/misc.lua

"Lsp server configs
luafile $HOME/.config/nvim/lsp_config.lua
