return {
  {
    "windwp/nvim-autopairs",
    verylazy = true,
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  {
    "windwp/nvim-ts-autotag",
    verylazy = true,
    config = function()
      require("nvim-ts-autotag").setup({
        opts = {
          -- Defaults
          enable_close = true,      -- Auto close tags
          enable_rename = true,     -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },

        aliases = {
          ["eruby"] = "html",
        },
        -- Also override individual filetype configs, these take priority.
        -- Empty by default, useful if one of the "opts" global settings
        -- doesn't work well in a specific filetype
        -- per_filetype = {
        --   ["html"] = {
        --     enable_close = false,
        --   },
        -- },
      })
    end,
  },
}
