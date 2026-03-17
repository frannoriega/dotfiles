return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codecompanion").setup({
      adapters = {
        http = {
          openrouter = function()
            return require("codecompanion.adapters").extend("openai_compatible", {
              env = {
                url = "https://openrouter.ai/api",
                api_key = "OPENROUTER_API_KEY",
                chat_url = "/v1/chat/completions",
              },
              schema = {
                model = {
                  default = "anthropic/claude-sonnet-4-5",
                  choices = {
                    ["anthropic/claude-sonnet-4-5"] = { opts = {} },
                    ["anthropic/claude-3.5-sonnet"] = { opts = {} },
                    ["anthropic/claude-3-opus"] = { opts = {} },
                    ["openai/gpt-4o"] = { opts = {} },
                    ["openai/gpt-4o-mini"] = { opts = {} },
                    ["google/gemini-2.5-pro-preview"] = { opts = {} },
                    ["google/gemini-2.0-flash-001"] = { opts = {} },
                    ["meta-llama/llama-3.3-70b-instruct"] = { opts = {} },
                  },
                },
              },
            })
          end,
          anthropic = function()
            return require("codecompanion.adapters").extend("anthropic", {
              env = {
                api_key = "ANTHROPIC_API_KEY",
              },
            })
          end,
        },
      },
      interactions = {
        chat = {
          adapter = "openrouter",
        },
        inline = {
          adapter = "openrouter",
        },
        cmd = {
          adapter = "openrouter",
        },
      },
      display = {
        action_palette = {
          provider = "telescope",
        },
        chat = {
          show_settings = true,
        },
      },
    })

    local keymap = vim.keymap

    keymap.set({ "n", "v" }, "<leader>ap", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true, desc = "AI action palette" })
    keymap.set({ "n", "v" }, "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true, desc = "AI toggle chat" })
    keymap.set("v", "<leader>aa", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true, desc = "AI add selection to chat" })
    keymap.set({ "n", "v" }, "<leader>ai", "<cmd>CodeCompanion<cr>", { noremap = true, silent = true, desc = "AI inline assistant" })
    keymap.set("n", "<leader>ac", "<cmd>CodeCompanionChat<cr>", { noremap = true, silent = true, desc = "AI new chat" })

    -- Expand 'cc' into 'CodeCompanion' in command-line mode
    vim.cmd([[cab cc CodeCompanion]])
  end,
}
