vim.g.mapleader = " "

local keymap = vim.keymap

-- Move between panes
keymap.set("n", "<C-A-h>", "<cmd>wincmd h<CR>", { desc = "Focus left window" })
keymap.set("n", "<C-A-j>", "<cmd>wincmd j<CR>", { desc = "Focus lower window" })
keymap.set("n", "<C-A-k>", "<cmd>wincmd k<CR>", { desc = "Focus upper window" })
keymap.set("n", "<C-A-l>", "<cmd>wincmd l<CR>", { desc = "Focus right window" })

-- Quit insert mode
keymap.set("i", "jk", "<Esc>", { desc = "Quit insert mode" })

-- Move up or down the selection
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection one line down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection one line up" })

-- Move up a line and don't move the cursor
keymap.set("n", "J", "mzJ`z", { desc = "Move selection up a line without moving cursor" })

-- Navigating within the file with centered view
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })

-- Select all
keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Center the editor when move into selections
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- New tab
keymap.set("n", "<C-A-t>", "<cmd>tabnew<CR>", { desc = "New tab" })
keymap.set("n", "<C-A-w>", "<cmd>bdelete<CR>", { desc = "Close tab" })
keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
keymap.set("n", "<s-tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })

-- Editor split view
keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>ee", "<C-w>=")
keymap.set("n", "<leader>ww", "<cmd>close<CR>", { desc = "Close buffer" })
