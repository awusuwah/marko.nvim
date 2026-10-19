## Install the prerequisites
- Neovim 0.11+
- Git
- `ripgrep` for Telescope
- `fd` for file searching
- A Nerd Font for icons
- A C compiler and `make` for plugins that compile native components
```bash
sudo pacman -S neovim git ripgrep fd base-devel
```

## Clone this configuration
If you don't already have an existing Neovim configuration:
```bash
git clone git@github.com:awusuwah/marko.nvim.git ~/.config/nvim 
```

If that directory already exists, back it up first rather than overwriting it.

## Launch Neovim
Just launch Neovim. `lazy.nvim` should handle the rest of the setup without any issues
```bash
nvim
```

Once the launch has finished, restart Neovim and run:
```vim
:Lazy sync
```

This ensures that all the plugins are available, ready and use the proper configuration.

## Language Server Protocols
Install the LSPs you need to work
```vim
:Mason
```

**Important**: `Mason` installing a language server doesn't automatically configure Neovim
to start it. Your `config/lsp.lua` still needs the appropriate `vim.lsp.enable(...)` config.

## Verify editor integrity
These commands will tell you immediately whether something is missing:
- `:checkhealth` > General health and dependency checks
- `:Lazy` > Plugin installation status
- `:Mason` > Installed development tools
- `:LspInfo` > Language server status
- `:checkhealth vim.lsp` > Native LSP diagnostics
