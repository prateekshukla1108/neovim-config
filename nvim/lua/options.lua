-- Add this entire block to the end of your `options.lua` file.
require "nvchad.options"
require "alpha"
require "alpha.themes.dashboard"
require("nvim-tree").setup({
    update_cwd = true, -- Update the current working directory
})
-- at end of options.lua
vim.keymap.set('x', '<leader>ga', function()
    -- 1) Yank visual selection into register z
    vim.cmd('silent! normal! "zy')

    -- 2) Read from register z
    local sel = vim.fn.getreg('z')
    if sel == "" or sel:match("^%s*$") then
        vim.notify("No text selected.", vim.log.levels.WARN, { title = "Gemini-CLI" })
        return
    end

    -- 3) Ask for your custom query
    -- Define the fixed instruction prompt
    local feynman_instruction = "Be direct. Use first principle thinking and go into depth and be thorough. Use examples to support whatever you are saying and summarize the response and ask some questions related to the response in the end. Deliver your response like Richard Feynman"
    
    -- Ask the user for their specific query part
    local specific_user_query = vim.fn.input({ prompt = "Your Specific Gemini Query> " })
    
    -- Combine the instruction with the user's specific query
    local user_q = feynman_instruction .. " " .. specific_user_query
    
    if specific_user_query == "" then -- We check specific_user_query because the feynman_instruction is always there.
        vim.notify("Specific query cannot be empty.", vim.log.levels.WARN, { title = "Gemini-CLI" })
        return
    end

    -- 4) Prepend file path, append selection
    local file_path = vim.fn.expand('%:p')
    local combined = table.concat({ file_path, user_q, sel }, " ")

    -- 5) Fire Gemini in a bottom split
    local cmd = "gemini -p " .. vim.fn.shellescape(combined)
    require("nvchad.term").toggle({
        id        = "gemini_cli_term",
        pos       = "sp",
        size      = 0.3,
        cmd       = cmd,
        clear_cmd = false,
    })
end, {
    noremap = true,
    silent    = true,
    desc      = "Send file + query + selection to Gemini-CLI",
})
