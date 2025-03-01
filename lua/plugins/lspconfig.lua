return{
    {
        "neovim/nvim-lspconfig",
    dependencies = {"williamboman/mason-lspconfig.nvim",
                    "saghen/blink.cmp"},
    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({
            cmd = { "clangd", "--background-index", "--compile-commands-dir=build"},
            filetypes = { "c", "cpp", "objc", "objcpp" },
            root_dir = require('lspconfig').util.root_pattern("CMakeLists.txt", ".git"),
            settings = {
                clangd = {
                    -- Optional: Enable various clangd features
                    semanticHighlighting = true,
                }
            },
            init_options = {
                fallbackFlags = {'--std=c11'}
            },
            capabilities = capabilities,
        })
        lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        })
        lspconfig.gopls.setup({
            capabilities = capabilities
        })
    end
},
{
    "williamboman/mason.nvim",
    config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {"williamboman/mason.nvim"}
    }
}
