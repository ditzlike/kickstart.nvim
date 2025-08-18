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
map('n', 'gD', cmd('lua vim.lsp.buf.declaration()'), { desc = 'Go To Declarations' })
map('n', ']d', cmd('lua vim.diagnostic.goto_next()', 'zz'), { desc = 'Next Diagnostic' })
map('n', '[d', cmd('lua vim.diagnostic.goto_prev()', 'zz'), { desc = 'Previous Diagnostic' })
map('n', '<leader>rn', cmd('lua vim.lsp.buf.rename()'), { desc = 'Rename Symbol' })
map('n', '<leader>ca', cmd('lua vim.lsp.buf.code_action()'), { desc = 'Code Action' })
map('n', '<C-l>', cmd('lua vim.lsp.buf.format({ async = true })'), { desc = 'Format Buffer' })
