return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,

  opts = {
    flavour = "mocha",
    transparent_background = true,

    float = {
      transparent = false,
      solid = false,
    },

    auto_integrations = true,
  },

  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
