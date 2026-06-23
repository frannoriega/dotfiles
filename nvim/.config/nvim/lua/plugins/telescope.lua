-- Telescope for File Grepping
-- Install ripgrep
-- Install sharkdp/fd
return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")

		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "truncate" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap

		keymap.set(
			"n",
			"<leader>pf",
			"<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
      { desc = "Find files" }
		)
		keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
		keymap.set("n", "<leader>pc", "<cmd>Telescope grep_string<cr>", { desc = "Grep string" })
		keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<cr>", { desc = "Show buffers" })
		keymap.set("n", "<leader>ph", "<cmd>Telescope help_tags<cr>", { desc = "Show help tags" })
		keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Show git commits" })
		keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "Show git bcommits?" })
		keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Show git branches" })
		local function git_status_with_staging()
			local action_state = require("telescope.actions.state")
			local actions = require("telescope.actions")

			local function stage_file(bufnr)
				local entry = action_state.get_selected_entry()
				if not entry then return end
				vim.fn.system("git add " .. vim.fn.shellescape(entry.path))
				actions.close(bufnr)
				vim.defer_fn(git_status_with_staging, 50)
			end

			local function unstage_file(bufnr)
				local entry = action_state.get_selected_entry()
				if not entry then return end
				vim.fn.system("git restore --staged " .. vim.fn.shellescape(entry.path))
				actions.close(bufnr)
				vim.defer_fn(git_status_with_staging, 50)
			end

			require("telescope.builtin").git_status({
				attach_mappings = function(_, map)
					map({ "i", "n" }, "<C-s>", stage_file)
					map({ "i", "n" }, "<C-r>", unstage_file)
					return true
				end,
			})
		end

		keymap.set("n", "<leader>gs", git_status_with_staging, { desc = "Git status (stage: <C-s>, unstage: <C-r>)" })
	end,
}
