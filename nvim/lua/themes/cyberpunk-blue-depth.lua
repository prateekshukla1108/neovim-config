-- Theme: Cybernetic Depths
-- Based on the "Cybernetic Depths" VS Code theme palette.

local M = {}

M.type = "dark"

-- The full 30-color palette for detailed UI theming
M.base_30 = {
  white         = "#C0D2F0", -- Main foreground
  darker_black  = "#050A1F", -- Editor background
  black         = "#080C24", -- UI background (sidebars, statusline)
  black2        = "#0A1237", -- Lighter background (popups, widgets)
  one_bg        = "#080C24",
  one_bg2       = "#0A1237",
  one_bg3       = "#0A1237",
  grey          = "#6E809B", -- Comments
  grey_fg       = "#8CB2D4", -- Dim foreground
  grey_fg2      = "#8CB2D4",
  light_grey    = "#8CB2D4",
  red           = "#FF3366", -- Errors
  baby_pink     = "#ff4da6", -- Bright magenta
  pink          = "#E60073", -- Main magenta (keywords, operators)
  line          = "#0A1237", -- for lines like vertsplit
  green         = "#39DE8D", -- Functions, successes
  vibrant_green = "#57e2a2", -- Bright green
  blue          = "#4D9FFF", -- UI elements, info
  nord_blue     = "#6fafff", -- Bright blue
  yellow        = "#FFEA00", -- Warnings, search matches
  sun           = "#fff066", -- Bright yellow
  purple        = "#B452FF", -- Constants, numbers
  dark_purple   = "#E60073", -- Re-using the main magenta for contrast
  teal          = "#0FF6DF", -- Types, classes
  orange        = "#FFEA00", -- Using yellow as a substitute for orange
  cyan          = "#11C7FC", -- Strings
  statusline_bg = "#080C24",
  lightbg       = "#0A1237",
  pmenu_bg      = "#0FF6DF",
  folder_bg     = "#0FF6DF",
}

-- The standardized 16-color palette
M.base_16 = {
  base00 = "#050A1F", -- Darkest Background
  base01 = "#080C24", -- Lighter Background
  base02 = "#0A1237", -- Selection Background
  base03 = "#6E809B", -- Comments
  base04 = "#8CB2D4", -- Dark Foreground
  base05 = "#C0D2F0", -- Default Foreground
  base06 = "#E0E6F2", -- Light Foreground
  base07 = "#ffffff", -- Lightest Foreground
  base08 = "#FF3366", -- Red
  base09 = "#E60073", -- Magenta/Pink
  base0A = "#FFEA00", -- Yellow
  base0B = "#39DE8D", -- Green
  base0C = "#0FF6DF", -- Cyan/Teal
  base0D = "#4D9FFF", -- Blue
  base0E = "#B452FF", -- Purple
  base0F = "#11C7FC", -- Light Blue/String Cyan
}

-- Custom syntax highlighting overrides using Treesitter
M.polish_hl = {
  treesitter = {
    ['@comment'] = { fg = M.base_30.grey, italic = true },

    ['@keyword']   = { fg = M.base_30.pink },
    ['@operator']  = { fg = M.base_30.pink },
    ['@keyword.operator'] = { fg = M.base_30.pink },
    ['@keyword.function'] = { fg = M.base_30.pink },

    ['@function'] = { fg = M.base_30.green },
    ['@function.builtin'] = { fg = M.base_30.green },
    ['@method']   = { fg = M.base_30.green },
    ['@method.call'] = { fg = M.base_30.green },
    ['@constructor'] = { fg = M.base_30.teal },

    ['@constant']          = { fg = M.base_30.purple },
    ['@constant.builtin']  = { fg = M.base_30.purple, italic = true },
    ['@number']            = { fg = M.base_30.purple },

    ['@string']            = { fg = M.base_30.cyan },
    ['@string.escape']     = { fg = M.base_30.purple },

    ['@type']          = { fg = M.base_30.teal },
    ['@type.builtin']  = { fg = M.base_30.teal, italic = true },
    ['@attribute']     = { fg = M.base_30.teal, italic = true },
    ['@property']      = { fg = M.base_30.white },

    ['@variable'] = { fg = M.base_30.white },
    ['@variable.parameter'] = { fg = M.base_30.grey_fg, italic = true },

    ['@tag'] = { fg = M.base_30.green },
    ['@tag.attribute'] = { fg = M.base_30.teal, italic = false },
    ['@tag.delimiter'] = { fg = M.base_30.grey },

    ['@punctuation.bracket'] = { fg = M.base_30.grey_fg },
    ['@punctuation.delimiter'] = { fg = M.base_30.grey },
    ['@punctuation.special'] = { fg = M.base_30.pink },

    ['@markup.heading'] = { fg = M.base_30.pink, bold = true },
    ['@markup.link_url'] = { fg = M.base_30.blue, underline = true },
  },
}

-- Override the base theme with our new palette
M = require("base46").override_theme(M, "cybernetic_depths")

return M
