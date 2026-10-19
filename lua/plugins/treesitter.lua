local languages = {
  "lua",
  "vim",
  "vimdoc",
  "query",
  "go",
  "gomod",
  "javascript",
  "typescript",
  "tsx",
  "vue",
  "html",
  "css",
  "json",
  "yaml",
  "bash",
}

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    local treesitter = require("nvim-treesitter")
    treesitter.install(languages)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = languages,
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
