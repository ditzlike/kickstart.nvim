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
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')
vim.keymap.set('n', '<Tab>', ':tabnext<CR>')

-- hop.nvim --
vim.keymap.set('n', '<leader>h', ':HopChar2<CR>')
vim.keymap.set('n', '<C-f>', ':HopPattern<CR>')

-- peartree --
vim.g.pear_tree_repeatable_expand = 0

-- telescope -- I want to get rid of these
--local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[/] find files]' })
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[/] live grep]' })
--vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[/] buffers]' })
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[/] help tags]' })
