-- Load editor options
require("config.options")

-- Load custom keymaps
require("config.keymaps")

-- Load the Lazy plugin manager
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
require("config.lazy")

-- Set colorscheme
vim.cmd.colorscheme("catppuccin-mocha")
