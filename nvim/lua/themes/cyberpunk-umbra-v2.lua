-- Theme: Cyberpunk Umbra Reforged
-- Based on the "Cyberpunk Umbra Reforged" VS Code theme palette.

local M = {}

M.type = "dark"

-- The full 30-color palette for detailed UI theming
M.base_30 = {
  white         = "#D0EFFF", -- Main foreground
  darker_black  = "#0A0E2A", -- Editor background
  black         = "#0C1030", -- UI background (sidebars, popups)
  black2        = "#080B24", -- Darkest UI background (titlebar, statusbar)
  one_bg        = "#0C1030",
  one_bg2       = "#0C1030", -- Line highlight
  one_bg3       = "#00B0FF", -- Selection background
  grey          = "#546E7A", -- Comments
  grey_fg       = "#78909C", -- Dim foreground
  grey_fg2      = "#78909C",
  light_grey    = "#78909C",
  red           = "#E91E63", -- Errors
  baby_pink     = "#e040fb", -- Bright magenta
  pink          = "#D000F7", -- Main magenta (keywords)
  line          = "#00B0FF", -- for lines like vertsplit
  green         = "#00FF9C", -- Functions
  vibrant_green = "#00E6A7", -- Types, classes
  blue          = "#00B0FF", -- Strings
  nord_blue     = "#40c4ff", -- Bright blue
  yellow        = "#FFF02A", -- Constants, numbers
  sun           = "#fff59d", -- Bright yellow
  purple        = "#D000F7", -- Using main magenta for purple
  dark_purple   = "#D000F7",
  teal          = "#00E6A7", -- Using vibrant_green for teal
  orange        = "#FFF02A", -- Using yellow for orange
  cyan          = "#00E6A7", -- Using vibrant_green for cyan
  statusline_bg = "#080B24",
  lightbg       = "#0C1030",
  pmenu_bg      = "#00B0FF",
  folder_bg     = "#00FF9C",
}

-- The standardized 16-color palette
M.base_16 = {
  base00 = "#0A0E2A", -- Darkest Background
  base01 = "#0C1030", -- Lighter Background
  base02 = "#000c66", -- UI Background
  base03 = "#546E7A", -- Comments
  base04 = "#78909C", -- Dark Foreground
  base05 = "#D0EFFF", -- Default Foreground
  base06 = "#e6f4ff", -- Light Foreground
  base07 = "#FFFFFF", -- Lightest Foreground
  base08 = "#E91E63", -- Red
  base09 = "#D000F7", -- Orange (mapped to Magenta)
  base0A = "#FFF02A", -- Yellow
  base0B = "#00FF9C", -- Green
  base0C = "#00E6A7", -- Cyan
  base0D = "#00B0FF", -- Blue
  base0E = "#D000F7", -- Magenta
  base0F = "#546E7A", -- Brown (mapped to comment color)
}

-- Custom syntax highlighting overrides using Treesitter
M.polish_hl = {
  treesitter = {
    ['@comment'] = { fg = M.base_30.grey, italic = true },

    ['@keyword']   = { fg = M.base_30.pink },
    ['@operator']  = { fg = M.base_30.pink },
    ['@keyword.operator'] = { fg = M.base_30.pink },
    ['@storage.type'] = { fg = M.base_30.pink },

    ['@function']        = { fg = M.base_30.green },
    ['@function.call']   = { fg = M.base_30.green },
    ['@method']          = { fg = M.base_30.green },
    ['@method.call']     = { fg = M.base_30.green },

    ['@constant']         = { fg = M.base_30.yellow },
    ['@constant.builtin'] = { fg = M.base_30.yellow },
    ['@number']           = { fg = M.base_30.yellow },

    ['@string']           = { fg = M.base_30.blue },

    ['@type']             = { fg = M.base_30.vibrant_green, italic = true },
    ['@type.builtin']     = { fg = M.base_30.vibrant_green, italic = true },
    ['@constructor']      = { fg = M.base_30.vibrant_green, italic = true },
    ['@attribute']        = { fg = M.base_30.vibrant_green, italic = true },
    
    ['@property']         = { fg = M.base_30.white },
    ['@variable']         = { fg = M.base_30.white },
    ['@variable.parameter'] = { fg = M.base_30.grey_fg, italic = true },

    ['@tag'] = { fg = M.base_30.vibrant_green, italic = true },
    ['@tag.attribute'] = { fg = M.base_30.vibrant_green, italic = true },
    ['@tag.delimiter'] = { fg = M.base_30.blue },

    ['@punctuation'] = { fg = M.base_30.blue },
    ['@punctuation.bracket'] = { fg = M.base_30.white },
    ['@punctuation.delimiter'] = { fg = M.base_30.white },

    ['@markup.heading'] = { fg = M.base_30.pink, bold = true },
    ['@markup.link_url'] = { fg = M.base_30.grey_fg, underline = true },
    ['@markup.bold'] = { fg = M.base_30.blue, bold = true },
    ['@markup.italic'] = { fg = M.base_30.blue, italic = true },
    ['@markup.raw'] = { fg = M.base_30.green },
  },
}

-- Override the base theme with our new palette
M = require("base46").override_theme(M, "cyberpunk_umbra_reforged")

return M
