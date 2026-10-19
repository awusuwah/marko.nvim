return {
  "saghen/blink.cmp",

  -- Stay on the stable v1 API
  version = "1.*",

  -- Load before our LSP configuration
  lazy = false,

  dependencies = {
    "rafamadriz/friendly-snippets",
  },

  opts = {
    keymap = {
      preset = "enter",
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      menu = {
        border = "rounded",
        draw = {
          columns = {
            { "kind_icon" },
            { "label", "label_description", gap = 1 },
          },
        },
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 300,
        window = {
          border = "rounded",
        },
      },

      ghost_text = {
        enabled = true,
      },
    },

    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer",
      },
    },

    signature = {
      enabled = true,
    },

    fuzzy = {
      implementation = "prefer_rust_with_warning",
    },
  },

  config = function(_, opts)
    local blink = require("blink.cmp")

    blink.setup(opts)

    -- Advertise completion capabilities to language servers
    vim.lsp.config("*", {
      capabilities = blink.get_lsp_capabilities(),
    })
  end,
}
