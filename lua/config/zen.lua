local state_file = vim.fn.stdpath("config") .. "/zen-mode-state.txt"

local function save_zen_mode_state()
  local file = io.open(state_file, "w")
  if file then
    file:write(tostring(vim.g.zen_mode))
    file:close()
  else
    print("Failed to save Zen Mode state")
  end
end

local function load_zen_mode_state()
  local file = io.open(state_file, "r")
  if file then
    local content = file:read("*a")
    file:close()
    if content == "true" then
      vim.g.zen_mode = true
    else
      vim.g.zen_mode = false
    end
  else
    vim.g.zen_mode = false -- default to false if no state file exists
    save_zen_mode_state()
  end
end

vim.api.nvim_create_user_command("ZenToggle", function()
  vim.g.zen_mode = not vim.g.zen_mode
  if vim.g.zen_mode then
    print("Zen Mode enabled")
    print("Restart to take effect")
  else
    print("Zen Mode disabled")
    print("Restart to take effect")
  end
  save_zen_mode_state() -- Save the state whenever it changes
end, {})

vim.api.nvim_create_user_command("ZenEnable", function()
  if vim.g.zen_mode == true then
    print("Already on zen mode")
  else
    vim.g.zen_mode = true
    print("Zen Mode enabled")
    print("Restart to take effect")
    save_zen_mode_state() -- Save the state whenever it changes
  end
end, {})

vim.api.nvim_create_user_command("ZenDisable", function()
  if vim.g.zen_mode == false then
    print("Already not zen-ed")
  else
    vim.g.zen_mode = false
    print("Zen Mode disabled")
    print("Restart to take effect")
    save_zen_mode_state() -- Save the state whenever it changes
  end
end, {})

vim.api.nvim_create_user_command("ZenState", function()
  print("Zen mode: " .. tostring(vim.g.zen_mode))
end, {})

-- Call the function to load the state at startup
load_zen_mode_state()
if vim.g.zen_mode then
  -- lspconfig and null-ls is in lsp-sources file
  require("cmp").setup({ enabled = false })
end

local lsp_sources = require("config.lsp-sources")
if vim.g.zen_mode then
  lsp_sources.load_formatters()
  lsp_sources.load_lsp_without_cmp()
else
  lsp_sources.load_formatters()
  lsp_sources.load_linters()
  lsp_sources.load_lsp_with_cmp()
end
