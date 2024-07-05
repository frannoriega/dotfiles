-- LuaLine to show a status/info line
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local config = {
			options = {
				theme = "auto",
			},
		}
		require("lualine").setup(config)
	end,
}
