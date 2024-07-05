--[[ -- NoneLS for linting
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,
				-- Ruby
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
				-- Javascript/Typescript
				null_ls.builtins.diagnostics.erb_lint,
				null_ls.builtins.formatting.prettier,
				-- Python
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				-- Git commit
				null_ls.builtins.formatting.gitlint,
			},
		})
	end,
} ]]
return {}
