vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

vim.keymap.set('n', 'cpf', 'i#include <iostream>\nusing namespace std;\n\nint main() {\n    \n    return 0;\n}\n<Esc>3ki', { noremap = true, silent = true })
vim.keymap.set('n', 'cpc', 'i#include <stdio.h>\nint main() {\n    \n    return 0;\n}\n<Esc>3ki', { noremap = true, silent = true })


-- Map Ctrl+r to execute the macro in register 'a'

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

vim.keymap.set('n', '<C-d>', 'ggdG', { noremap = true, silent = true })
-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"


vim.schedule(function()
  require "mappings"
end)
