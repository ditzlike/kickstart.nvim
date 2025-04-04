local cmd = require('utils').cmd

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
    keys = {
        { '<C-n>', cmd('NvimTreeToggle') },
    },
}
