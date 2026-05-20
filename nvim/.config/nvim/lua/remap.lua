vim.g.mapleader = " "

local keymap = vim.keymap

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

-- Buffer / tab management  (<leader>b prefix)
keymap.set("n", "<leader>bn", "<cmd>tabnew<CR>",  { desc = "New tab" })
keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close buffer" })
keymap.set("n", "<tab>",      "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap.set("n", "<s-tab>",    "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })

-- Editor split view
keymap.set("n", "<leader>v",  "<C-w>v",         { desc = "Split vertical" })
keymap.set("n", "<leader>h",  "<C-w>s",         { desc = "Split horizontal" })
keymap.set("n", "<leader>=",  "<C-w>=",         { desc = "Equalize splits" })
keymap.set("n", "<leader>ww", "<cmd>close<CR>", { desc = "Close window" })

-- Window navigation (direct, no Ctrl+w prefix)
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window left" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window up" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window right" })
