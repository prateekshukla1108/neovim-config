-- Theme: Cyberpunk Neonoir (Corrected)
-- Based on the "Cyberpunk Neonoir" VS Code theme palette.

local M = {}

M.type = "dark"

-- The full 30-color palette for detailed UI theming
M.base_30 = {
  white         = "#F8F8F2", -- Main foreground
  darker_black  = "#0c0a1f", -- Editor background
  black         = "#100323", -- UI background (sidebars, popups)
  black2        = "#0A031A", -- Darkest UI background (titlebar, statusbar)
  one_bg        = "#100323",
  one_bg2       = "#22a0b6", -- Using the base blue for line highlight
  one_bg3       = "#7b1346", -- CORRECTED: Was #7b134666 (Selection background)
  grey          = "#75715E", -- Comments
  grey_fg       = "#9E9EAE", -- Dim foreground
  grey_fg2      = "#C1C1C8", -- Lighter dim foreground
  light_grey    = "#C1C1C8",
  red           = "#F92672", -- Keywords, errors
  baby_pink     = "#FD5FF0", -- Bright magenta
  pink          = "#F92672",
  line          = "#22a0b6", -- for lines like vertsplit
  green         = "#00ff9f", -- Functions
  vibrant_green = "#A6E22E", -- Attributes
  blue          = "#22a0b6", -- Types, classes
  nord_blue     = "#819aff", -- Bright blue
  yellow        = "#fd5ff0", -- Strings
  sun           = "#fd5ff0",
  purple        = "#AE81FF", -- Constants, numbers
  dark_purple   = "#cb0c59", -- Darker magenta
  teal          = "#22a0b6", -- Using blue for teal
  orange        = "#fd5ff0", -- Using magenta for orange
  cyan          = "#66D9EF", -- Bright cyan
  statusline_bg = "#0A031A",
  lightbg       = "#100323",
  pmenu_bg      = "#7b1346",
  folder_bg     = "#00ff9f",
}

-- The standardized 16-color palette
M.base_16 = {
  base00 = "#0c0a1f", -- Darkest Background
  base01 = "#100323", -- Lighter Background
  base02 = "#21222C", -- Terminal Black
  base03 = "#75715E", -- Comments
  base04 = "#9E9EAE", -- Dark Foreground
  base05 = "#F8F8F2", -- Default Foreground
  base06 = "#F9F8F5", -- Light Foreground
  base07 = "#FFFFFF", -- Lightest Foreground
  base08 = "#F92672", -- Red
  base09 = "#AE81FF", -- Orange (mapped to Purple)
  base0A = "#fd5ff0", -- Yellow (mapped to Magenta)
  base0B = "#A6E22E", -- Green
  base0C = "#00ff9f", -- Cyan (mapped to Function Green)
  base0D = "#22a0b6", -- Blue
  base0E = "#cb0c59", -- Magenta
  base0F = "#7b1346", -- Brown (mapped to dark pink)
}

-- Custom syntax highlighting overrides using Treesitter
M.polish_hl = {
  treesitter = {
    ['@comment'] = { fg = M.base_30.grey, italic = true },

    ['@keyword']   = { fg = M.base_30.red },
    ['@operator']  = { fg = M.base_30.red },
    ['@keyword.operator'] = { fg = M.base_30.red },
    ['@storage.type'] = { fg = M.base_30.red },

    ['@function']        = { fg = M.base_30.green },
    ['@function.call']   = { fg = M.base_30.green },
    ['@method']          = { fg = M.base_30.green },
    ['@method.call']     = { fg = M.base_30.green },

    ['@constant']         = { fg = M.base_30.purple },
    ['@constant.builtin'] = { fg = M.base_30.purple },
    ['@number']           = { fg = M.base_30.purple },

    ['@string']           = { fg = M.base_30.yellow },

    ['@type']             = { fg = M.base_30.blue, italic = true },
    ['@type.builtin']     = { fg = M.base_30.blue, italic = true },
    ['@constructor']      = { fg = M.base_30.blue, italic = true },
    ['@attribute']        = { fg = M.base_30.vibrant_green },
    
    ['@property']         = { fg = M.base_30.white },
    ['@variable']         = { fg = M.base_30.white },
    ['@variable.builtin'] = { fg = M.base_30.red, italic = true }, -- 'this', 'self'

    ['@tag'] = { fg = M.base_30.red },
    ['@tag.attribute'] = { fg = M.base_30.vibrant_green },
    ['@tag.delimiter'] = { fg = M.base_30.red },

    ['@punctuation'] = { fg = M.base_30.red },
    ['@punctuation.bracket'] = { fg = M.base_30.white },
    ['@punctuation.delimiter'] = { fg = M.base_30.white },

    ['@markup.heading'] = { fg = M.base_30.dark_purple, bold = true },
    ['@markup.link_url'] = { fg = M.base_30.blue, underline = true },
    ['@markup.bold'] = { fg = M.base_30.yellow, bold = true },
    ['@markup.italic'] = { fg = M.base_30.yellow, italic = true },
    ['@markup.raw'] = { fg = M.base_30.green },
  },
}

-- Override the base theme with our new palette
M = require("base46").override_theme(M, "cyberpunk_neonoir")

return M
