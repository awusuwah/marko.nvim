return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  cmd = "Telescope",

  keys = {
    {
      "<leader><leader>",
      "<cmd>Telescope find_files<CR>",
      desc = "Find files",
    },
    {
      "<leader>fg",
      "<cmd>Telescope live_grep<CR>",
      desc = "Search text",
    },
    {
      "<leader>fb",
      "<cmd>Telescope buffers<CR>",
      desc = "Find buffers",
    },
    {
      "<leader>fh",
      "<cmd>Telescope help_tags<CR>",
      desc = "Search help",
    },
  },

  opts = {
    defaults = {
      prompt_prefix = "  ",
      selection_caret = " ",
      entry_prefix = " ",

      sorting_strategy = "ascending",

      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          width = 0.88,
          height = 0.78,
          preview_width = 0.52,
          prompt_position = "top",
        },
      },

      border = true,
      winblend = 0,
      path_display = { "smart" },
    },
  },
}
