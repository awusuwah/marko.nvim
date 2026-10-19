return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  opts = {
    preset = "helix",

    delay = 300,

    spec = {
      { "<leader>f", group = "Find" },
      { "<leader>c", group = "Code" },
      { "<leader>x", group = "Diagnostics" },
      { "<leader>r", group = "Refactor" },
    },
  },

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Show buffer keymaps",
    },
  },
}
