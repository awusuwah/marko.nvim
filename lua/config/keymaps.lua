vim.g.mapleader = " "

local map = vim.keymap.set

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Splits
map("n", "<leader>sh", "<C-w>s", { desc = "Horizontal split" })
map("n", "<leader>sv", "<C-w>v", { desc = "Vertical split" })
map("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

map("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase split height" })
map("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease split height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease split width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase split width" })

map("n", "<leader>sc", "<C-w>c", { desc = "Close split" })
map("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })

-- Save and quit
map("n", "<leader>w", "<cmd>write<CR>", { desc = "Save buffer" })
map("n", "<leader>q", "<cmd>quit<CR>", { desc = "Quit window" })

-- Keep selection while indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move current line
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })

-- Move selected lines
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Files
map("n", "<leader>fn", "<cmd>enew<CR>", { desc = "New file" })

-- Git
map("n", "<leader>gg", "<cmd>lazygit<CR>", { desc = "LazyGit" })
