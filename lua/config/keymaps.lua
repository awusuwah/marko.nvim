vim.g.mapleader = " "

local map = vim.keymap.set

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Move between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- Window management
map("n", "<leader>sv", "<C-w>v", { desc = "Vertical split" })
map("n", "<leader>sh", "<C-w>s", { desc = "Horizontal split" })

-- Save and quit
map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save buffer" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit window" })

-- Keep selection while indenting
map("v", "<", "<gv")
map("v", ">", ">gv")
