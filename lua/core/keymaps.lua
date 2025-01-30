-- Key Maps --

vim.g.mapleader = ' '

vim.keymap.set('n', '<Esc>', ':nohlsearch<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>te', ':tabnew | term<CR>')
