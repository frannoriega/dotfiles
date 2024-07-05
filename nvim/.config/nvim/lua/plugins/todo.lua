-- Highlight and search for TODO comments
return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo = require("todo-comments")

    todo.setup({})

    vim.keymap.set("n", "<leader>tt", ":TodoTelescope<CR>", { noremap = true, silent = true, desc = "Find TODO"})

    vim.keymap.set("n", "<leader>tn", function()
      todo.jump_next()
    end,
      { desc = "Go to next TODO" })

    vim.keymap.set("n", "<leader>tp", function()
      todo.jump_prev()
    end,
      { desc = "Go to previous TODO" })
  end,
}
