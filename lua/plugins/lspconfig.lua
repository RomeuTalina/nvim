return{
    {
        "nvim-tree/nvim-web-devicons",
    },
    {
        "neovim/nvim-lspconfig",
    dependencies = {"williamboman/mason-lspconfig.nvim"},
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        local lspconfig = require("lspconfig")
        lspconfig.clangd.setup({
            capabilities = capabilities
        })
        lspconfig.lua_ls.setup({
            capabilities = capabilities
        })
        lspconfig.ts_ls.setup({
            capabilities = capabilities
        })
        lspconfig.jdtls.setup({
            capabilites = capabilities,
        })
        lspconfig.css_lsp.setup({
            capabilites = capabilities,
        })

    end
    }
}
