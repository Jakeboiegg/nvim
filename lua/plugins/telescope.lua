return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  tag = "0.1.8",
  -- or                              , branch = '0.1.x',
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          preview_width = 0.6,
        },
      },
    },
  },
}
