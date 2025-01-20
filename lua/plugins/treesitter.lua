return{

    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { "lua", "java", "python", "go", "c_sharp", "cpp", "html", "css", "javascript", "xml"},
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
            fold = {
                enable = true,
            },
        })
    end
}
