local noice_settings = {}
return {
  "folke/noice.nvim",
  name = "noice",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    "MunifTanjim/nui.nvim"
  },
  config = function()
    require("noice").setup(noice_settings)
  end
}
