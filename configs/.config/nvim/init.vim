call plug#begin()
    "Completion
    Plug 'neovim/nvim-lspconfig'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'lithammer/nvim-diagnosticls'
    Plug 'lambdalisue/vim-cython-syntax'
    Plug 'NullptrExceptions/cython-snips/'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'sudar/vim-arduino-syntax'

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

"Line numbers and diagnostics
set number
set numberwidth=1
set signcolumn=no

"Mouse
set mouse=a

"Time between when typing stops and when things execute, increase to slightly increase performance
set updatetime=500

"Remove the tildes at the bottom of the screen in the empty space 
highlight! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

"Completion key
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

"Misc lua config
luafile $HOME/.config/nvim/misc.lua

"Lsp server configs
luafile $HOME/.config/nvim/lsp.lua
