--omnisharp
local pid = vim.fn.getpid()
local omnisharp_bin = "/path/to/omnisharp/run"
require('lspconfig').omnisharp.setup {	cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) }; capabilities = capabilities }

--pyright
require('lspconfig').pyright.setup{}

--ccls
require('lspconfig').ccls.setup{
cmd = { '/usr/bin/ccls' }
}

--tsserver
require'lspconfig'.tsserver.setup{}
