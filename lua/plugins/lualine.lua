return {
  "nvim-lualine/lualine.nvim",
  verylazy = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    theme = "rose-pine-moon",
    extensions = { "neo-tree" },

    sections = {
      lualine_a = { "mode" },
      lualine_b = { "" },
      lualine_c = { "filename" },
      lualine_x = { "branch", "diff", "diagnostics" },
      lualine_y = { "location" },
      lualine_z = { "filetype" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
  },
}
