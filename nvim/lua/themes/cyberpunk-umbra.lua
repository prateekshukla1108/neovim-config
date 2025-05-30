-- cyberpunk_umbra_revised.lua
local M = {}

M.base_30 = {
  white = "#00FF9C",            -- Editor/Main Foreground
  darker_black = "#00012A",     -- Activity Bar Background (even darker)
  black = "#010020",            -- Editor Background (darker: from #020138)
  black2 = "#00023F",           -- SideBar Background (darker: from #000352)
  one_bg = "#03030F",           -- Editor Gutter Background (darker variant)
  one_bg2 = "#001A0E",          -- Debug Toolbar/Status Bar Background base (darker variant of #002212)
  one_bg3 = "#2A1F4D",          -- Editor Group Header Tabs Background (darker variant of #372963)
  grey = "#7A79C0",             -- Comments (more visible: brighter, slightly more blue than #6766b3)
  grey_fg = "#7877b3",          -- Inactive Tabs, PeekView Line FG
  grey_fg2 = "#3D5AFE",         -- Editor Line Number FG
  light_grey = "#5247b3",       -- Editor Indent Guide Background
  red = "#ff5680",              -- Tags, Editor Error
  baby_pink = "#ee6dff",        -- HTML Attributes
  pink = "#ff4081",             -- Progress Bar
  line = "#182333",             -- Editor Ruler
  green = "#fffc58",            -- Numbers/Constants
  vibrant_green = "#d57bff",    -- Keywords
  nord_blue = "#76c1ff",        -- Strings
  blue = "#00b0ff",             -- Operators, Functions, Punctuation
  yellow = "#ffff00",
  sun = "#FFCB6B",
  purple = "#d57bff",           -- Keywords (Primary Purple)
  dark_purple = "#4E2CB5",      -- Editor Selection Background (more visible: brighter/more saturated than #311b92)
  teal = "#00FF9C",             -- Main FG, also Classes/Types
  orange = "#F78C6C",
  cyan = "#00e676",
  statusline_bg = "#001A0E",
  lightbg = "#002f6d",
  pmenu_bg = "#7E57C2",         -- Editor Selection Highlight (more visible: from #5e35b1)
  folder_bg = "#3d5afe",
}

M.base_16 = {
  base00 = M.base_30.black,
  base01 = M.base_30.one_bg,
  base02 = M.base_30.one_bg2,
  base03 = M.base_30.grey,
  base04 = M.base_30.grey_fg,
  base05 = M.base_30.white,
  base06 = "#b4baff",
  base07 = "#EEFFFF",
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
