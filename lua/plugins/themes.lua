return{

    { 
        "rose-pine/neovim", name = "rose-pine",
        lazy = true,
        config = function()
            require("rose-pine").setup({
                styles = {
                    italic = false,
                },
            })
        end
    },
    {
        "folke/tokyonight.nvim", name = "tokyonight",
        lazy = true,
        --priority = 1000,
        opts = {},
    },
    {
        "Mofiqul/vscode.nvim", name = "vscode",
        lazy = true,
        priority = 1000,
        config = function()
            vim.g.vscode_style = "dark"
            vim.cmd("colorscheme vscode")
        end
    },
    {
        "rebelot/kanagawa.nvim", name = "kanagawa",
        lazy = true,
        theme = "lotus",
        background = {
            dark = "lotus",
            light = "wave",
        }
    }

}
