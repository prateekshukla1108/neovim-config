-- Theme: Neon Dynasty: Midnight
-- Based on the "Neon Dynasty: Midnight" VS Code theme palette.

local M = {}

M.type = "dark"

-- The full 30-color palette for detailed UI theming
M.base_30 = {
  white         = "#F5C592", -- Main foreground
  darker_black  = "#10011F", -- Editor background
  black         = "#15042D", -- UI background (sidebars, statusbar)
  black2        = "#1F063B", -- Lighter UI background, line highlight base
  one_bg        = "#15042D",
  one_bg2       = "#1F063B",
  one_bg3       = "#5D42AD", -- Selection background
  grey          = "#AB8A67", -- Comments
  grey_fg       = "#AB8A67", -- Dim foreground
  grey_fg2      = "#AB8A67",
  light_grey    = "#AB8A67",
  red           = "#FF5555", -- Errors
  baby_pink     = "#b82a72", -- Bright magenta
  pink          = "#981357", -- Main magenta (keywords)
  line          = "#5D42AD", -- for lines like vertsplit
  green         = "#50FA7B", -- Functions
  vibrant_green = "#72ff9a", -- Bright green
  blue          = "#5D42AD", -- UI Accent Blue/Purple
  nord_blue     = "#795fe9", -- Bright blue
  yellow        = "#FFCB6B", -- Strings
  sun           = "#ffd788", -- Bright yellow
  purple        = "#5D42AD", -- Using main blue/purple
  dark_purple   = "#981357", -- Using main magenta
  teal          = "#80FFEA", -- Types, classes
  orange        = "#FB9B37", -- Constants, numbers
  cyan          = "#80FFEA", -- Using teal for cyan
  statusline_bg = "#15042D",
  lightbg       = "#1F063B",
  pmenu_bg      = "#5D42AD",
  folder_bg     = "#FB9B37",
}

-- The standardized 16-color palette
M.base_16 = {
  base00 = "#10011F", -- Darkest Background
  base01 = "#15042D", -- Lighter Background
  base02 = "#1F063B", -- UI Background
  base03 = "#AB8A67", -- Comments
  base04 = "#AB8A67", -- Dark Foreground
  base05 = "#F5C592", -- Default Foreground
  base06 = "#ffeee0", -- Light Foreground
  base07 = "#FFFFFF", -- Lightest Foreground
  base08 = "#FF5555", -- Red
  base09 = "#FB9B37", -- Orange
  base0A = "#FFCB6B", -- Yellow
  base0B = "#50FA7B", -- Green
  base0C = "#80FFEA", -- Cyan
  base0D = "#5D42AD", -- Blue
  base0E = "#981357", -- Magenta
  base0F = "#AB8A67", -- Brown (mapped to comment color)
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

    ['@constant']         = { fg = M.base_30.orange },
    ['@constant.builtin'] = { fg = M.base_30.orange },
    ['@number']           = { fg = M.base_30.orange },

    ['@string']           = { fg = M.base_30.yellow },

    ['@type']             = { fg = M.base_30.teal, italic = true },
    ['@type.builtin']     = { fg = M.base_30.teal, italic = true },
    ['@constructor']      = { fg = M.base_30.teal, italic = true },
    ['@attribute']        = { fg = M.base_30.teal, italic = true },
    
    ['@property']         = { fg = M.base_30.white },
    ['@variable']         = { fg = M.base_30.white },
    ['@variable.parameter'] = { fg = M.base_30.grey_fg, italic = true },

    ['@tag'] = { fg = M.base_30.green },
    ['@tag.attribute'] = { fg = M.base_30.teal, italic = true },
    ['@tag.delimiter'] = { fg = M.base_30.pink },

    ['@punctuation'] = { fg = M.base_30.pink },
    ['@punctuation.bracket'] = { fg = M.base_30.white },
    ['@punctuation.delimiter'] = { fg = M.base_30.white },

    ['@markup.heading'] = { fg = M.base_30.orange, bold = true },
    ['@markup.link_url'] = { fg = M.base_30.grey_fg, underline = true },
    ['@markup.bold'] = { fg = M.base_30.yellow, bold = true },
    ['@markup.italic'] = { fg = M.base_30.yellow, italic = true },
    ['@markup.raw'] = { fg = M.base_30.green },
  },
}

-- Override the base theme with our new palette
M = require("base46").override_theme(M, "neon_dynasty_midnight")

return M
