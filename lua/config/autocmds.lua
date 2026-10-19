local group = vim.api.nvim_create_augroup(
  "AwusuwahConfig",
  { clear = true }
)

-- Highlight text after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank({
      timeout = 150,
    })
  end,
})

-- Remember cursor position
vim.api.nvim_create_autocmd("BufReadPost", {
  group = group,
  callback = function(event)
    local mark = vim.api.nvim_buf_get_mark(event.buf, '"')
    local line = mark[1]
    local last = vim.api.nvim_buf_line_count(event.buf)

    if line > 0 and line <= last then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
