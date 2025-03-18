return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  config = function ()
    require("oil").setup({
      view_options = {
        show_hidden = true;
      }
    })
  end
}
