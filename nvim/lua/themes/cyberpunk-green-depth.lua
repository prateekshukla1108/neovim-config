-- Theme: Cyberpunk Tide
-- Based on the "Cyberpunk Tide" VS Code theme palette.

local M = {}

M.type = "dark"

-- The full 30-color palette for detailed UI theming
M.base_30 = {
  white         = "#A8F5E5", -- Main foreground
  darker_black  = "#021513", -- Editor background
  black         = "#04201C", -- UI background (sidebars)
  black2        = "#062A24", -- UI background (statusline, titlebar)
  one_bg        = "#04201C",
  one_bg2       = "#062A24",
  one_bg3       = "#08B89D",
  grey          = "#56948A", -- Comments
  grey_fg       = "#7BD3C6", -- Dim foreground
  grey_fg2      = "#7BD3C6",
  light_grey    = "#7BD3C6",
  red           = "#FF4081", -- Errors
  baby_pink     = "#f73378", -- Bright magenta
  pink          = "#F50057", -- Main magenta (keywords, operators)
  line          = "#062A24", -- for lines like vertsplit
  green         = "#39DE8D", -- Functions, successes
  vibrant_green = "#57e2a2", -- Bright green
  blue          = "#11C7FC", -- Info, strings
  nord_blue     = "#3ed4fc", -- Bright blue
  yellow        = "#FFEA00", -- Warnings, constants
  sun           = "#fff066", -- Bright yellow
  purple        = "#F50057", -- Re-using main pink for purple
  dark_purple   = "#F50057",
  teal          = "#0FF6DF", -- Types, classes
  orange        = "#FFEA00", -- Re-using yellow for orange
  cyan          = "#11C7FC", -- Main cyan/blue
  statusline_bg = "#062A24",
  lightbg       = "#062A24",
  pmenu_bg      = "#08B89D",
  folder_bg     = "#0FF6DF",
}

-- The standardized 16-color palette
M.base_16 = {
  base00 = "#021513", -- Darkest Background
  base01 = "#04201C", -- Lighter Background
  base02 = "#062A24", -- Selection Background
  base03 = "#56948A", -- Comments
  base04 = "#7BD3C6", -- Dark Foreground
  base05 = "#A8F5E5", -- Default Foreground
  base06 = "#c1f7ec", -- Light Foreground
  base07 = "#ffffff", -- Lightest Foreground
  base08 = "#FF4081", -- Red
  base09 = "#F50057", -- Magenta/Pink
  base0A = "#FFEA00", -- Yellow
  base0B = "#39DE8D", -- Green
  base0C = "#0FF6DF", -- Teal
  base0D = "#11C7FC", -- Blue/Cyan
  base0E = "#F50057", -- Purple (mapped to Magenta)
  base0F = "#08B89D", -- Secondary Teal
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

    ['@constant']          = { fg = M.base_30.yellow },
    ['@constant.builtin']  = { fg = M.base_30.yellow, italic = true },
    ['@number']            = { fg = M.base_30.yellow },

    ['@string']            = { fg = M.base_30.cyan },
    ['@string.escape']     = { fg = M.base_30.pink },

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
    ['@punctuation.special'] = { fg = M.base_30.green },

    ['@markup.heading'] = { fg = M.base_30.pink, bold = true },
    ['@markup.link_url'] = { fg = M.base_30.grey_fg, underline = true },
  },
}

-- Override the base theme with our new palette
M = require("base46").override_theme(M, "cyberpunk_tide")

return M
