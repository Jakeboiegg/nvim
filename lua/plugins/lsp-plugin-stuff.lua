return {
  {
    "williamboman/mason.nvim",
    verylazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "stevearc/dressing.nvim",
    verylazy = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    verylazy = true,
    config = function()
      require("mason-lspconfig").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    verylazy = false,
    version = "1.0.0",
  },
}

