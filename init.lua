vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.diagnostics")
require("config.startup")
require("config.lazy")

-- Enable language servers after loading blink.cmp
require("config.lsp")
