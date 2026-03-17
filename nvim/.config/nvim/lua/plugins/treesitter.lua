-- Treesitter for AST
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			opts = {},
		},
	},
	opts = {
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	},
}
