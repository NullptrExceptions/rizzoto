-- Diagnostics
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
})

vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local signs = {
    Error = "",
    Warn = "",
    Hint = "",
    Info = ""
}

for type, sign in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = sign, texthl = hl, numhl = hl})
end

-- Bufferline
require("bufferline").setup{}

-- Feline
require("feline").setup{}

-- Treesitter
require'nvim-treesitter.configs'.setup{
    ensure_installed = { "c", "cpp", "lua", "rust", "javascript", "json", "html", "vim", "typescript", "tsx", "python" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    }
}

-- Toggleterm
require("toggleterm").setup{
    size=10,
    open_mapping = [[<F4>]]
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- Nvim-tree
require("nvim-tree").setup{}
