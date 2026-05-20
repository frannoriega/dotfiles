-- Comment line capabilities
return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup({
			pre_hook = function()
				local ft = vim.bo.filetype
				local map = {
					sh = "# %s",
					bash = "# %s",
					zsh = "# %s",
					fish = "# %s",
					python = "# %s",
					ruby = "# %s",
				}
				return map[ft]
			end,
		})
	end,
}
