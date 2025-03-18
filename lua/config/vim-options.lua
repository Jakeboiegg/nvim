vim.cmd("set relativenumber")
vim.cmd("set autoindent")
vim.cmd("set nowrap")
vim.cmd("set termguicolors")

-- tab stuff
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=-1")
vim.cmd("set smarttab")

-- cmp not take up the whole screen please
vim.cmd("set pumheight=5")

-- make the '~' in the numberline disappear
vim.opt.fillchars:append("eob: ")

-- make yank and paste work with clipboard
-- vim.opt.clipboard = "unnamedplus"
