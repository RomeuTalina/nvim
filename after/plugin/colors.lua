function ColorMyPencils(color)

    require('kanagawa').setup({
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
        overrides = function()
            return {
                ["@variable.builtin"] = { italic = false },
            }
        end
    })

    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    --vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils("kanagawa-dragon")
