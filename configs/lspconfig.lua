local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "asm_lsp", "rust_analyzer", "taplo" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
lspconfig.asm_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"asm-lsp"},
  filetypes = {"asm", "s", "vasm"},
  root_dir = function() return vim.loop.cwd() end
}
