require("config.vim-options")
-- lazy
---@diagnostic disable-next-line: different-requires
require("config.lazy")

-- colorscheme
vim.cmd("colorscheme rose-pine-moon")

-- require other files
require("config.keymaps")

require("config.zen")
