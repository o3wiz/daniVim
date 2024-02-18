local lualine_settings = {
  options = {
    theme = "auto",
    globalstatus = false
  },
  sections = {
    lualine_a = {
      {
        "buffers"
      }
    }
  }
}
return {
  'nvim-lualine/lualine.nvim',
  name = "lualine",
  dependencies = {'nvim-tree/nvim-web-devicons'},
  lazy = false,
  priority = 1001,
  config = function()
    require("lualine").setup(lualine_settings)
  end
}
