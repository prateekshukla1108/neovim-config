require "nvchad.mappings"

-- yours here
local map = vim.keymap.set

-- Snacks project picker keybind
map("n", "<leader>fp", ":Telescope projects<CR>", { noremap = true, silent = true })
-- Save with Ctrl+s in Normal and Visual modes
map("n", "<C-s>", ":w<CR>")  -- Normal mode
map("v", "<C-s>", ":w<CR>")  -- Visual mode

-- Copy with Ctrl+c in Normal and Visual modes
map("n", "<C-c>", '"+y')    -- Normal mode (copy selected text to clipboard)
map("v", "<C-c>", '"+y')    -- Visual mode (copy selected text to clipboard)

-- Paste with Ctrl+v in Normal and Visual modes
map("n", "<C-v>", '"+p')    -- Normal mode (paste from clipboard)
map("v", "<C-v>", '"+p')    -- Visual mode (paste from clipboard)

map('n', '<C-q>', ':bd<CR>', { noremap = true, silent = true })
map("i", "<A-BS>", "<C-w>", { desc = "General remove word" })

-- Command mode entry mapping
map("n", ";", ":", opts)  -- CMD enter command mode

-- Escape mapping in Insert mode
map("i", "jk", "<ESC>", opts)  -- Use 'jk' to escape from Insert mode


