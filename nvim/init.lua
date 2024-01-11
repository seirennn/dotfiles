-- Enable extras.ui.alpha in LazyVim
vim.g.lazyvim = {
  extras = {
    ui = {
      alpha = {
        enable = true,
        -- Additional alpha.nvim configuration goes here, if needed
      },
    },
  },
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- vimrc or init.lua

-- ... (Other configurations)

-- Load custom colorscheme
require("plugins.colorscheme")
