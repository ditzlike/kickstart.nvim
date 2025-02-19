vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration

  --require 'kickstart.plugins.git',

  -- Detect tabstop and shiftwidth automatically
  --'tpope/vim-sleuth',

  --require 'plugins.autocomplete',


  --TODO
  --require 'plugins.whichkey',
  require 'plugins.lsp',

  --TODO
  --require 'plugins.git-signs',

  --require 'plugins.theme',

  --TODO
  --require '.plugins.lualine',

  -- TODO
  --{
  --  -- Add indentation guides even on blank lines
  --  'lukas-reineke/indent-blankline.nvim',
  --  -- Enable `lukas-reineke/indent-blankline.nvim`
  --  -- See `:help ibl`
  --  main = 'ibl',
  --  opts = {},
  --},

  -- TODO
  --require '.plugins.comment',

  require 'plugins.fuzzyfinder',
  --decided to go with the new mappings
  --require 'custom.plugins.telescope',

  require 'plugins.treesitter',
  require 'plugins.nvim-tree',
  require 'plugins.colourscheme',
  require 'plugins.obsidian',
  require 'plugins.hop',
  require 'plugins.harpoon'

  -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
  --       These are some example plugins that I've included in the kickstart repository.
  --       Uncomment any of the lines below to enable them.
  --require 'plugins.autoformat',
  --require 'kickstart.plugins.debug',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
  --    up-to-date with whatever is in the kickstart repo.
  --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --
  --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  -- { import = 'custom.plugins' },
  -- this is where I put some personal plugins
  --require 'custom.plugins.general',
  --require 'custom.plugins.obsidian',
  --require 'custom.plugins.toggleterm'
}, {})

-- Wenn fertig: require alle plugins

--TODO
--require 'custom.configs.options'

-- [[ Basic Keymaps ]]
-- my own mappings :>
require 'mappings'
require 'settings'
require 'style'
--TODO
--require 'configs.mappings'

--require 'plugins.telescope'

--require 'plugins.treesitter'

-- these two go together
--require 'plugins.nvim-cmp'


-- [[ My own stuff]]
--require 'custom.configs.nvim-tree'
--require 'custom.configs.toggleterm'
--require 'custom.configs.obisidian'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
