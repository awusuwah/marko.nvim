local diagnostic = vim.diagnostic

diagnostic.config({
  -- Show icons in the sign column
  signs = {
    text = {
      [diagnostic.severity.ERROR] = "󰅚",
      [diagnostic.severity.WARN] = "󰀪",
      [diagnostic.severity.INFO] = "󰋽",
      [diagnostic.severity.HINT] = "󰌶",
    },
  },

  -- Show diagnostic messages at the end of lines
  virtual_text = {
    spacing = 4,
    prefix = "●",
    source = "if_many",
  },

  -- Highlight problematic code
  underline = true,

  -- Don't constantly update errors while typing
  update_in_insert = false,

  -- Prioritize errors over warnings
  severity_sort = true,

  -- Floating diagnostic windows
  float = {
    border = "rounded",
    source = true,
    focusable = true,
  },
})

-- Show diagnostics for the current line
vim.keymap.set("n", "<leader>cd", function()
  diagnostic.open_float({
    scope = "line",
  })
end, { desc = "Line diagnostics" })

-- Navigate between diagnostics
vim.keymap.set("n", "]d", function()
  diagnostic.jump({ count = 1, float = true })
end, { desc = "Next diagnostic" })

vim.keymap.set("n", "[d", function()
  diagnostic.jump({ count = -1, float = true })
end, { desc = "Previous diagnostic" })
