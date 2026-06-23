-- Neotree for browsing the filesystem
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      commands = {
        git_add = function(state)
          local node = state.tree:get_node()
          local path = node:get_id()
          vim.fn.system("git add " .. vim.fn.shellescape(path))
          require("neo-tree.sources.manager").refresh(state.name)
        end,
        git_unstage = function(state)
          local node = state.tree:get_node()
          local path = node:get_id()
          vim.fn.system("git restore --staged " .. vim.fn.shellescape(path))
          require("neo-tree.sources.manager").refresh(state.name)
        end,
      },
      window = {
        mappings = {
          ["ga"] = "git_add",
          ["gu"] = "git_unstage",
          -- Copy absolute path to clipboard
          ['Y'] = function(state)
            local node = state.tree:get_node()
            local filename = node.name
            vim.fn.setreg('"', filename)
            vim.notify("Copied: " .. filename)
          end,
        },
      },
    })

    vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", { desc = "Open filesystem sidebar" })
  end,
}
