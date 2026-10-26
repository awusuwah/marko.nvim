local group = vim.api.nvim_create_augroup("AwusuwahConfig", { clear = true })
local gofmt_group = vim.api.nvim_create_augroup("GoFormat", { clear = true })

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

-- Automatically format buffers for `.go` files using `gofmt`
vim.api.nvim_create_autocmd("BufWritePre", {
  group = gofmt_group,
  pattern = "*.go",
  callback = function(args)
    vim.lsp.buf.format({
      bufnr = args.buf,
      async = false,
      timeout_ms = 2000,
      filter = function(client)
        return client.name == "gopls"
      end,
    })
  end,
})

-- Automatically create missing directories when writing buffers
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    local file = vim.api.nvim_buf_get_name(args.buf)
    if file == "" then
      return
    end

    local dir = vim.fn.fnamemodify(file, ":p:h")
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})
