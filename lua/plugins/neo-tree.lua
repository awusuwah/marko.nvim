return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",

  cmd = "Neotree",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },

  keys = {
    {
      "<leader>e",
      "<cmd>Neotree filesystem toggle left<CR>",
      desc = "Toggle file explorer",
    },
    {
      "<leader>E",
      "<cmd>Neotree filesystem reveal left<CR>",
      desc = "Reveal current file",
    },
  },

  opts = {
    close_if_last_window = true,

    popup_border_style = "rounded",

    enable_git_status = true,
    enable_diagnostics = true,

    filesystem = {
      follow_current_file = {
        enabled = true,
      },

      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
      },
    },

    window = {
      position = "left",
      width = 32,

      mappings = {
        ["<space>"] = "none",
      },
    },
  },
}
