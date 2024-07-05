-- LSP configuration using Mason
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		-- LSP config for Flutter + Dart
		"akinsho/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.tsserver.setup({ capabilities = capabilities })
			lspconfig.tailwindcss.setup({ capabilities = capabilities })
			lspconfig.vuels.setup({ capabilities = capabilities })
			lspconfig.solang.setup({ capabilities = capabilities })
			lspconfig.rust_analyzer.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.pyright.setup({ capabilities = capabilities })
			lspconfig.dockerls.setup({ capabilities = capabilities })
			lspconfig.taplo.setup({ capabilities = capabilities })

			-- Global mappings.
			-- See `:help vim.diagnostic.*` for documentation on any of the below functions
			vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open diagnostic window"})
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous"})
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next"})
			vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Set loc list"})

			-- Use LspAttach autocommand to only map the following keys
			-- after the language server attaches to the current buffer
			vim.api.nvim_create_autocmd("LspAttach", {
				group = vim.api.nvim_create_augroup("UserLspConfig", {}),
				callback = function(ev)
					-- Enable completion triggered by <c-x><c-o>
					vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

					-- Buffer local mappings.
					-- See `:help vim.lsp.*` for documentation on any of the below functions
					local opts = { buffer = ev.buf }
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, table.move({ desc = "Go to declaration" }, 1, 1, 2, opts))
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, table.move({ desc = "Go to definition" }, 1, 1, 2, opts))
					vim.keymap.set("n", "K", vim.lsp.buf.hover, table.move({ desc = "Show documentation" }, 1, 1, 2, opts))
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, table.move({ desc = "Implementation?" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, table.move({ desc = "Show signature" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, table.move({ desc = "Add workspace folder" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, table.move({ desc = "Remove workspace folder" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<leader>wl", function()
						print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
					end, table.move({ desc = "List workspace folders" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, table.move({ desc = "Show type definition" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, table.move({ desc = "Rename" }, 1, 1, 2, opts))
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, table.move({ desc = "Show code actions" }, 1, 1, 2, opts))
					vim.keymap.set("n", "gr", vim.lsp.buf.references, table.move({ desc = "Show references" }, 1, 1, 2, opts))
					vim.keymap.set("n", "<leader>f", function()
						vim.lsp.buf.format({ async = true })
					end, table.move({ desc = "Format" }, 1, 1, 2, opts))
			end,
			})

			-- You will likely want to reduce updatetime which affects CursorHold
			-- note: this setting is global and should be set only once
			vim.o.updatetime = 250
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				group = vim.api.nvim_create_augroup("float_diagnostic", { clear = true }),
				callback = function()
					vim.diagnostic.open_float(nil, { focus = false })
				end,
			})
		end,
	},
}
