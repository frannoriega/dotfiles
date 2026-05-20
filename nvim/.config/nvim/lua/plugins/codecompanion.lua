return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
    "ravitemer/codecompanion-history.nvim",
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        acp = {
          claude_code = function()
            return require("codecompanion.adapters").extend("claude_code", {
              env = {
                api_key = "CLAUDE_CODE_OAUTH_TOKEN"
              },
            })
          end,
        },
      },
      extensions = {
        history = {
          enabled = true,
          opts = {
            keymap = "gh",
            auto_save = true,
            expiration_days = 0,
            picker = "telescope",
          },
        },
      },
      interactions = {
        chat = {
          adapter = "claude_code",
        },
        inline = {
          adapter = "claude_code",
        },
      }
    })

    local keymap = vim.keymap

    keymap.set({ "n", "v" }, "<leader>ap", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true, desc = "AI action palette" })
    keymap.set({ "n", "v" }, "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true, desc = "AI toggle chat" })
    keymap.set("v", "<leader>aa", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true, desc = "AI add selection to chat" })
    keymap.set({ "n", "v" }, "<leader>ai", "<cmd>CodeCompanion<cr>", { noremap = true, silent = true, desc = "AI inline assistant" })
    keymap.set("n", "<leader>ac", "<cmd>CodeCompanionChat<cr>", { noremap = true, silent = true, desc = "AI new chat" })
    keymap.set("n", "<leader>ah", "<cmd>CodeCompanionHistory<cr>", { noremap = true, silent = true, desc = "AI chat history" })

    -- Expand 'cc' into 'CodeCompanion' in command-line mode
    vim.cmd([[cab cc CodeCompanion]])
  end,
}
