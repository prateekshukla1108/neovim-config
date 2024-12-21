local configs = require("nvchad.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

-- List of servers to install and configure
local servers = {
    "lua_ls",       -- Lua Language Server
    "html",         -- HTML Language Server
    "cssls",        -- CSS Language Server
    "clangd",       -- C/C++ Language Server
    "ruff",         -- Python Linter
    "pyright",      -- Python Language Server
    "jsonls",       -- JSON Language Server
    "dockerls",     -- Docker Language Server
}

-- Setup Mason
require("mason").setup({
    ui = {
        border = "rounded",
    },
})

-- Configure Mason-lspconfig
mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_installation = true,
})

-- Configure each server
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

-- Additional configurations for specific servers if needed
lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            }
        }
    }
})
