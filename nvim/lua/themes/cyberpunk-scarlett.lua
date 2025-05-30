-- cyberpunk_scarlet_revised.lua
local M = {}

M.base_30 = {
  white = "#ff0055",            -- Editor/Main Foreground
  darker_black = "#400003",     -- SideBar Background (even darker than #0a0b0e)
  black = "#0D0E12",            -- Editor Background (darker: from #101116)
  black2 = "#100007",           -- Title Bar Background (darker: from #140009)
  one_bg = "#040406",           -- Editor Gutter Background (darker: from #060608)
  one_bg2 = "#4d0015",          -- Status Bar Background base (more red, less black)
  one_bg3 = "#0D0E12",          -- Editor Group Header Tabs (darker, matches new editor bg)
  grey = "#8C7AA8",             -- Comments (more visible: lighter, more purple than #6766b3 to contrast red/black)
  grey_fg = "#be4e74",
  grey_fg2 = "#a6003a",
  light_grey = "#400015",
  red = "#ff5680",
  baby_pink = "#ee6dff",
  pink = "#ff0055",
  line = "#182333",
  green = "#fffc58",
  vibrant_green = "#d57bff",
  nord_blue = "#76c1ff",
  blue = "#00b0ff",
  yellow = "#ffff00",
  sun = "#FFCB6B",
  purple = "#d57bff",
  dark_purple = "#800080",      -- Debugging Status Bar, more visible Selection BG (was #6A0DAD)
  teal = "#00FF9C",
  orange = "#F78C6C",
  cyan = "#00ffc8",
  statusline_bg = "#4d0015",    -- Statusline Background (more red, less black)
  lightbg = "#400015",
  pmenu_bg = "#73002A",         -- EditorSuggestWidget.selectedBackground (more visible: from #59001c)
  folder_bg = "#00a2ff",
}

M.base_16 = {
  base00 = M.base_30.black,
  base01 = M.base_30.one_bg,
  base02 = M.base_30.darker_black,
  base03 = M.base_30.grey,
  base04 = M.base_30.grey_fg,
  base05 = M.base_30.white,
  base06 = "#EEFFFF",
  base07 = "#ffffff",
  base08 = M.base_30.red,
  base09 = M.base_30.green, -- Using yellow as orange
  base0A = M.base_30.green,
  base0B = M.base_30.teal,
  base0C = M.base_30.cyan,
  base0D = M.base_30.blue,
  base0E = M.base_30.purple,
  base0F = M.base_30.baby_pink,
}
if M.base_30.orange == "#F78C6C" then M.base_16.base09 = M.base_30.orange else M.base_16.base09 = M.base_30.green end

M.polish_hl = {
  treesitter = {
    ["@keyword.import"] = { fg = M.base_30.purple },
    ["@uri"] = { fg = M.base_30.blue, underline = true },
    ["@tag.delimiter"] = { fg = M.base_30.blue },
    ["@tag"] = { fg = M.base_30.red },
    ["@property"] = { fg = M.base_30.nord_blue },
    ["@punctuation.bracket"] = { fg = M.base_30.blue },
    ["@punctuation.delimiter"] = { fg = M.base_30.blue },
    ["@attribute"] = { fg = M.base_30.baby_pink, italic = true },
    ["@string"] = { fg = M.base_30.nord_blue },
    ["@string.escape"] = { fg = M.base_30.baby_pink },
    ["@character"] = { fg = M.base_30.green },
    ["@number"] = { fg = M.base_30.green },
    ["@boolean"] = { fg = M.base_30.green },
    ["@float"] = { fg = M.base_30.green },
    ["@function"] = { fg = M.base_30.blue },
    ["@function.macro"] = { fg = M.base_30.blue },
    ["@function.call"] = { fg = M.base_30.blue },
    ["@method"] = { fg = M.base_30.blue },
    ["@method.call"] = { fg = M.base_30.blue },
    ["@constructor"] = { fg = M.base_30.purple, italic = true },
    ["@keyword"] = { fg = M.base_30.purple },
    ["@keyword.function"] = { fg = M.base_30.purple },
    ["@keyword.operator"] = { fg = M.base_30.blue },
    ["@operator"] = { fg = M.base_30.blue },
    ["@type"] = { fg = M.base_30.teal },
    ["@type.builtin"] = { fg = M.base_30.teal, italic = true },
    ["@variable"] = { fg = "#EEFFFF" },
    ["@variable.builtin"] = { fg = M.base_30.red, italic = true },
    ["@parameter"] = { fg = M.base_30.green, italic = true },
    ["@comment"] = { fg = M.base_30.grey, italic = true },
    ["@punctuation.special"] = { fg = M.base_30.red },
    ["@constant"] = { fg = M.base_30.green },
    ["@constant.builtin"] = { fg = M.base_30.green, italic = true},
    ["@label"] = { fg = M.base_30.baby_pink },
    ["@include"] = { fg = M.base_30.purple },
    ["@namespace"] = { fg = M.base_30.teal },
  },

  syntax = {
    Type = { fg = M.base_30.teal },
    Identifier = { fg = M.base_30.white },
    Constant = { fg = M.base_30.green },
    Statement = { fg = M.base_30.purple },
    PreProc = { fg = M.base_30.purple },
    Special = { fg = M.base_30.red },
    Operator = { fg = M.base_30.blue },
  },
}

M.type = "dark"
return M

