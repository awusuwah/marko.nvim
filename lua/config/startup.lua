vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Only intercept startup with one directory argument
    if vim.fn.argc() ~= 1 then
      return
    end

    local path = vim.fn.argv(0)
    if vim.fn.isdirectory(path) ~= 1 then
      return
    end

    vim.schedule(function()
      -- Use the directory as the project root
      vim.cmd.cd(vim.fn.fnameescape(vim.fn.fnamemodify(path, ":p")))

      -- Replace the directory browser with an empty buffer
      vim.cmd("enew")

      -- Render the dashboard in the current window
      Snacks.dashboard.open({
        buf = 0,
        win = 0,
      })
    end)
  end,
})
