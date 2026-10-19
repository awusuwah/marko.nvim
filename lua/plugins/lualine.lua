return {
  "nvim-lualine/lualine.nvim",

  event = "VeryLazy",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    options = {
      theme = "auto",

      globalstatus = true,

      component_separators = "",
      section_separators = {
        left = "",
        right = "",
      },

      disabled_filetypes = {
        statusline = {
          "dashboard",
          "alpha",
        },
      },
    },

    sections = {
      lualine_a = {
        {
          "mode",
          fmt = function(mode)
            return mode
          end,
        },
      },

      lualine_b = {
        {
          "branch",
          icon = "",
        },
      },

      lualine_c = {
        {
          "filename",
          path = 1,
          symbols = {
            modified = " ●",
            readonly = " 󰌾",
            unnamed = "[No Name]",
          },
        },
      },

      lualine_x = {
        {
          "diagnostics",
          sources = { "nvim_diagnostic" },
          symbols = {
            error = " ",
            warn = " ",
            info = " ",
            hint = "󰌵 ",
          },
        },
        {
          "lsp_status",
          icon = "",
          show_name = true,
        },
        "filetype",
      },

      lualine_y = {
        "progress",
      },

      lualine_z = {
        "location",
      },
    },

    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "filename" },
      lualine_x = { "location" },
      lualine_y = {},
      lualine_z = {},
    },
  },
}
