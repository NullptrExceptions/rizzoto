local lspconfig = require('lspconfig')
local diagnosticls = require("diagnosticls")

-- Diagnostic language server
lspconfig.diagnosticls.setup({
  filetypes = {
    unpack(diagnosticls.filetypes),
  },
  init_options = {
    linters = vim.tbl_deep_extend("force", diagnosticls.linters, {}),
    formatters = diagnosticls.formatters,
    filetypes = {
      sh = "shellcheck",
    },
    formatFiletypes = {
      sh = "shfmt",
    },
  },
})

-- Rust-analyzer
lspconfig.rust_analyzer.setup({})

-- Omnisharp
local pid = vim.fn.getpid()
local omnisharp_bin = "/path/to/omnisharp/run"
lspconfig.omnisharp.setup { cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }; capabilities = capabilities }

-- Pyright
lspconfig.pyright.setup{}

-- Ccls
lspconfig.ccls.setup{
cmd = { '/usr/bin/ccls' }
}

-- Tsserver
lspconfig.tsserver.setup{}
