local map = require('utils').map
local cmd = require('utils').cmd

vim.g.mapleader = ' ' -- easy to reach leader key
vim.keymap.set('n', 'ä', '$')
vim.keymap.set('n', 'ö', '^')
vim.keymap.set('n', 'dä', 'd$')
vim.keymap.set('n', 'dö', 'd^')
vim.keymap.set('n', '+', ':vertical resize +5<CR>')
vim.keymap.set('n', '-', ':vertical resize -5<CR>')
vim.keymap.set('n', '<M-+>', ':resize +5<CR>')
vim.keymap.set('n', '<M-->', ':resize -5<CR>')
vim.keymap.set('x', 'ä', '$')
vim.keymap.set('x', 'ö', '^')
--vim.keymap.set('n', '<F1>', ':below 20sp term://$SHELL<cr>i')
--vim.keymap.set('n', '<F2>', '<C-w>ji')
--vim.keymap.set('t', '<F1>', '<C-\\><C-n>:q!<Enter>')
--vim.keymap.set('t', '<F2>', '<C-\\><C-n><C-w>k')
vim.keymap.set('i', 'üa', '<C-o>%')
vim.keymap.set('i', 'üq', '<C-o>%<C-o>%<C-o>a')
--vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>') --TODO: does not work. Figure out bufferlines instead
--vim.keymap.set('n', '<Tab>', ':tabnext<CR>')

-- peartree --
vim.g.pear_tree_repeatable_expand = 0

-- lsp --
map('n', 'gD', cmd('lua vim.lsp.buf.declaration()'), silenced)
map('n', 'gd', cmd('Telescope lsp_definitions'), silenced)
map('n', 'gi', cmd('Telescope lsp_implementations'), silenced)
map('n', 'gr', cmd('Telescope lsp_references'), silenced)
map('n', '<F2>', cmd('lua vim.diagnostic.goto_next()', 'zzzv'), silenced)
map('n', '<S-F2>', cmd('lua vim.diagnostic.goto_prev()', 'zzzv'), silenced)
map('n', '<C-k>', cmd('lua vim.lsp.buf.signature_help()'), silenced)
map('n', '<leader>rn', cmd('lua vim.lsp.buf.rename()'), silenced)
map('n', '<leader>ca', cmd('lua vim.lsp.buf.code_action()'), silenced)
map('n', '<C-l>', cmd('lua vim.lsp.buf.format({ async = true })'), silenced)
