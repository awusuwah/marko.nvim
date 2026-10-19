-- Lua
vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".git",
  },

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})
vim.lsp.enable("lua_ls")

-- Go
vim.lsp.config("gopls", {
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = {
    "go.work",
    "go.mod",
    ".git"
  },
})
vim.lsp.enable("gopls")

-- Keybinds for LSPs
-- -----------------

-- Keybind: Go to definition\
local map = vim.keymap.set
map("n", "gd", vim.lsp.buf.definition, {
  desc = "Go to definition",
})

-- Keybind: Find references
map("n", "gr", vim.lsp.buf.references, {
  desc = "Find references",
})

-- Keybind: Show documentation
vim.keymap.set("n", "K", function()
  vim.lsp.buf.hover({
    border = "rounded",
    max_width = 85,
    max_height = 22,
    focusable = true,
  })
end, { desc = "Show documentation" })
