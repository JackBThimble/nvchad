---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "rosepine",
  theme_toggle = { "radium", "one_light" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
  lsp_semantic_tokens = true,

  nvdash = {
    load_on_startup = true,
  },

  lsp = {
    signature = {
      disabled = false,
      silent = true,
    }
  },
  statusline = {
    theme = "vscode_colored"
  },
  cmp = {
    icons = true,
    style = "flat_dark",
    lspkind_text = true,
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
