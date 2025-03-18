-- edit these
local function load_formatters()
  local null_ls = require("null-ls")
  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.htmlbeautifier,
      null_ls.builtins.formatting.rubocop,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.prettierd,
    },
  })
end

local function load_linters()
  local null_ls = require("null-ls")
  null_ls.setup({
    sources = {
      null_ls.builtins.diagnostics.zsh,
    },
  })
end

local table_of_lsps = {
  --lua
  "lua_ls",

  --ruby
  "solargraph",
  "rubocop",

  -- web dev
  "cssls",
  "html",
  "vtsls",
  "eslint",
  "ts_ls",

  -- python
  "pyright",
}

local function load_lsp_with_cmp()
  local lspconfig = require("lspconfig")
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  for _, lsp in pairs(table_of_lsps) do
    if lsp == "html" then
      lspconfig.html.setup({
        filetypes = { "html", "eruby" },
        capabilities = capabilities,
      })
    else
      lspconfig[lsp].setup({ capabilities = capabilities })
    end
  end
end

local function load_lsp_without_cmp()
  local lspconfig = require("lspconfig")
  for _, lsp in pairs(table_of_lsps) do
    if lsp == "html" then
      lspconfig.html.setup({
        filetypes = { "html", "eruby" },
      })
    else
      lspconfig[lsp].setup({})
    end
  end
end

return {
  load_formatters = load_formatters,
  load_lsp_without_cmp = load_lsp_without_cmp,
  load_linters = load_linters,
  load_lsp_with_cmp = load_lsp_with_cmp,
}

-- if vim.g.zen_mode then
--   load_formatters()
--   load_lsp_without_cmp()
-- else
--   load_formatters()
--   load_linters()
--   load_lsp_with_cmp()
-- end
