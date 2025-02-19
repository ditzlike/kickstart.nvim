-- disable netrw at the very start of your init.lua
-- TODO: disable tab
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle <CR>')

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

return {
    'nvim-tree/nvim-tree.lua',
    event = 'VeryLazy',
    dependencies = 'kyazdani42/nvim-web-devicons',
    opts = {
        actions = {
            open_file = {
                resize_window = false,
            },
        },
    },
}
