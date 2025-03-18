return {
  "goolord/alpha-nvim",
  -- dependencies = { 'echasnovski/mini.icons' },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local startify = require("alpha.themes.startify")
    -- available: devicons, mini, default is mini
    -- if provider not loaded and enabled is true, it will try to use another provider
    startify.file_icons.provider = "devicons"
    require("alpha").setup(startify.config)

    -- Require Alpha plugin
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local jakevim = {
      [[ ]],
      [[ ]],
      [[ ]],
      [[ ]],
      [[ ]],
      [[ ]],
      [[   _       _              _]],
      [[  (_) __ _| | _______   _(_)_ __ ___]],
      [[  | |/ _` | |/ / _ \ \ / / | '_ ` _ \]],
      [[  | | (_| |   <  __/\ V /| | | | | | |]],
      [[ _/ |\__,_|_|\_\___| \_/ |_|_| |_| |_|]],
      [[|__/]],
    }

    -- Set header
    dashboard.section.header.val = jakevim
    dashboard.section.buttons.val = {}

    -- Footer with a custom message
    dashboard.section.footer.val = ""

    -- ending stuff
    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)
  end,
}
