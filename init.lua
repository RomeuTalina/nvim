
require('config.lazy')

--NEOVIDE EXCLUSIVE SETTINGS--

if vim.g.neovide then
    vim.g.neovide_cursor_trail_size = 0
    vim.g.neovide_cursor_animation_length = 0
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
    --vim.g.neovide_title_background_color = string.format(
    --    "%x",
    --    vim.api.nvim_get_hl(0, {id=vim.api.nvim_get_hl_id_by_name("Normal")}).bg
    --    
    --)
    vim.g.neovide_title_background_color = "#1f1f1f"
    vim.g.neovide_remember_window_size = true
    vim.o.guifont = "CaskaydiaMono Nerd Font"
end

--SET THE THEME--
vim.cmd.colorscheme("rose-pine")


--KEYMAPS--
vim.g.mapleader = ' '

--Remove higlighting from search results
vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
--Opens a terminal tab
vim.keymap.set('n', '<leader>te', ':tabnew | term<CR>')
--Opens netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

--SETTINGS (EVIL)--
--Só copiei das minhas antigas não quero ouvir duvidas usa os dedos que deus te deu e vai ao google

vim.o.number = true          -- Show line numbers
vim.o.relativenumber = true  -- Make the line numbers relative

vim.o.wrap = false           -- Disable line wrapping
vim.o.smartindent = true     -- Enable smart indentation
vim.o.tabstop = 4            -- Number of spaces for a tab
vim.o.shiftwidth = 4         -- Indentation level for '>' and '<'
vim.o.expandtab = true       -- Convert tabs to spaces
vim.o.softtabstop = 4        -- Number of spaces for a tab when editing
vim.o.ignorecase = true      -- Ignore case during search
vim.o.smartcase = true       -- Case-sensitive if uppercase letters are used
vim.o.hlsearch = true        -- Highlight search results
vim.o.incsearch = true       -- Show search matches as you type
vim.o.scrolloff = 8

vim.o.showmode = false       -- Don't show mode in the statusline (use a plugin like `lualine` instead)
vim.o.laststatus = 3         -- Enable global status line (for modern statusline plugins)
vim.o.showtabline = 2        -- Always show the tabline

vim.o.swapfile = false       -- Disable swap files
vim.o.backup = false         -- Disable backup files
vim.o.undofile = true        -- Enable persistent undo
vim.o.undodir = vim.fn.expand("~/.vim/undo") -- Specify the undo directory
vim.o.lazyredraw = true      -- Improve performance when redrawing
vim.o.updatetime = 300       -- Set faster updates for autocompletion

vim.o.clipboard = 'unnamedplus' -- Use system clipboard for copy/paste

vim.o.mouse = 'a'            -- Enable mouse support
vim.o.cursorcolumn = false    -- Highlight the current column
--vim.o.cursorlineopt = 'both' -- Highlight both column and line


vim.o.splitbelow = true      -- Open new horizontal splits below
vim.o.splitright = true      -- Open new vertical splits to the right

vim.o.encoding = 'utf-8'     -- Set file encoding to UTF-8
vim.o.fileencoding = 'utf-8' -- Set the encoding of the file to UTF-8

vim.opt.termguicolors = true
vim.opt.cursorline = false
vim.opt.guicursor = "n-v-c:block,i:block"

vim.cmd([[
  augroup AutoSave
    autocmd!
    autocmd BufWritePre * :silent! %s/\s\+$//e  -- Remove trailing whitespaces on save
  augroup END
]])
vim.cmd('filetype plugin indent on')  -- Enable filetype plugin and indentation

-- Disable cursorline in netrw
vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.cursorline = false
    end,
})


