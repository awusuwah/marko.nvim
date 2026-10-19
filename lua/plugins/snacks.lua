return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,

  opts = {
    dashboard = {
      enabled = true,
      width = 52,

      preset = {
        header = [[
          ███╗   ██╗██╗   ██╗██╗███╗   ███╗
          ████╗  ██║██║   ██║██║████╗ ████║
          ██╔██╗ ██║██║   ██║██║██╔████╔██║
          ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
          ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
          ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝ 
        ]],

        keys = {
          {
            icon = "",
            key = "f",
            desc = "Find File",
            action = ":Telescope find_files",
          },
          {
            icon = "",
            key = "e",
            desc = "File Explorer",
            action = ":Neotree filesystem left",
          },
          {
            icon = "",
            key = "g",
            desc = "Search Text",
            action = ":Telescope live_grep",
          },
          {
            icon = "󰒲",
            key = "l",
            desc = "Lazy",
            action = ":Lazy",
          },
          {
            icon = "",
            key = "q",
            desc = "Quit",
            action = ":qa",
          },
        },
      },

      sections = {
        { section = "header", padding = 2 },
        { section = "keys", gap = 1, padding = 1 },
        { section = "recent_files", title = "Recent Files", limit = 5, padding = 1 },
        { section = "projects", title = "Projects", limit = 5, padding = 1 },
        { section = "startup" },
      },
    },
  },
}
