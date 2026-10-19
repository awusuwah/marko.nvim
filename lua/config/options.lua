local opt = vim.opt

-- Appearance
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.cmdheight = 0

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- Editing
opt.undofile = true
opt.swapfile = true
opt.clipboard = "unnamedplus"
opt.scrolloff = 8

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Responsiveness
opt.updatetime = 250
opt.timeoutlen = 400

-- Popup windows
opt.winborder = "rounded"
opt.pumheight = 12
opt.showmode = false
opt.laststatus = 3
opt.fillchars = {
  eob = " ",
}
