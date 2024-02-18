local nvimtree_setup = {
  hijack_cursor = true,
  disable_netrw = true,
  view = {
    side = "right",
    width = 42,
    cursorline = false
  },
  renderer = {
    indent_width = 4
  },
  filters = {
    dotfiles = true,
    custom = {"lazy-lock.json"}
  }
}
return {
  "nvim-tree/nvim-tree.lua",
  name = "nvimtree",
  dependencies = "nvim-tree/nvim-web-devicons",
  lazy = false,
  config = function()
    require("nvim-tree").setup(nvimtree_setup)
    -- nvim-tree keymaps
    local api_tree = require("nvim-tree.api").tree
    keymap.set("n", "<leader>te", api_tree.toggle)
    keymap.set("n", "<leader>tr", api_tree.reload)
    keymap.set("n", "<leader>tf", api_tree.open)
  end
}
