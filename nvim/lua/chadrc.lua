-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

-- If you want to include this, it should be here, outside the M table
-- require("lspconfig").ruff.setup{}

M.base46 = {
  theme = "nightowl",
  transparency = false,
  theme_toggle = { "nightowl", "one_light" },
}

M.ui = {
  cmp = {
    icons_left = false,
    style = "atom",
    format_colors = {
      tailwind = false,
      icon = "󱓻 ",
    },
  },
  telescope = { style = "bordered" },
  statusline = {
    enabled = true,
    theme = "minimal",
    separator_style = "round",
  },
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
  },
}

M.nvdash = {
  load_on_startup = false,
  header = {
    "           ",
    "    ▄▄     ▄ ▄▄▄▄▄▄▄  ",
    "  ▄▀███▄   ▄██ █████▀   ",
    "  ██▄▀███▄  ███         ",
    "  ███  ▀███▄ ███         ",
    "  ███    ▀██ ███         ",
    "  ███      ▀ ███         ",
    "  ▀██ █████▄▀█▀▄██████▄   ",
    "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    "           ",
    "    Powered By  eovim   ",
    "           ",
  },
  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.term = {
  winopts = { number = false, relativenumber = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "single",
  },
}

M.lsp = { signature = true }

M.cheatsheet = {
  theme = "grid",
  excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" },
}

-- M.mason = { pkgs = {}, skip = {} } -- Only include if you intend to override defaults

M.colorify = {
  enabled = true,
  mode = "virtual",
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

return M
