-- leader keybinds are in lazy.lua
-- christooney nvim-tmux stuff is in the christooney plugin file
local wk = require("which-key")

-- quit and save
vim.keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "quit all" })
vim.keymap.set("n", "<leader>q", ":quit<CR>", { desc = "quit buffer" })
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "save" })

-- split screen
vim.keymap.set("n", "<leader>gsh", ":split<CR>", { desc = "split screen horizontally" })
vim.keymap.set("n", "<leader>gsv", ":vsplit<CR>", { desc = "split screen vertically" })

-- copy and paste
vim.keymap.set("v", "<leader>gy", '"+y', { desc = "yank for system clipboard" })
vim.keymap.set({"n","v"}, "<leader>gp", '"+p', { desc = "paste for system clipboard" })

-- run python file
vim.keymap.set("n", "<leader>gr", function()
  local filename = vim.fn.getreg("a")
  vim.cmd("botright new | resize 5 | term python3 " .. filename)
  -- vim.cmd("redraw!")
end, { desc = "run python file in register 'a'" })

-- mason
vim.keymap.set("n", "<leader>gm", ":Mason<CR>", { desc = "open mason" })

-- lazy update
vim.keymap.set("n", "<leader>gl", ":Lazy update<CR>", { desc = "open mason" })

-- visual line tab indent
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle right<CR>", { desc = "file viewer" })
vim.keymap.set("n", "<C-f>", "<Nop>", { noremap = true, silent = true })

-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>ft", ":Telescope colorscheme<CR>")

local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-J>"] = actions.move_selection_next,
        ["<C-K>"] = actions.move_selection_previous,
      },
    },
  },
})

-- homepage
vim.keymap.set("n", "<leader>h", ":Alpha<CR>", { desc = "homepage" })

-- comment
wk.add({ "<leader>gc", mode = "v", desc = "comment lines" })

-- lsp
vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = "hover info" })
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "goto definition" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, { desc = "format file" })

-- lazygit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { desc = "open lazygit" })

-- oil
vim.keymap.set("n", "<leader>go", ":Oil<CR>", { desc = "open oil" })
