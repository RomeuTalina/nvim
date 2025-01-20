-- Basic Settings --
vim.o.number = true -- Show line numbers
vim.o.relativenumber = true -- Make the line numbers relative

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

-- Enable filetype detection, plugins, and indentation
vim.cmd('filetype plugin indent on')

-- Disable cursorline in netrw
vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        vim.opt_local.cursorline = false
    end,
})
