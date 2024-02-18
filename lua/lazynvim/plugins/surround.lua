local surround_settings = {}
return {
    "kylechui/nvim-surround",
    name = "nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup(surround_settings)
    end
}
