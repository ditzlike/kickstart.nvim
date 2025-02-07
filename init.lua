--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================

Kickstart.nvim is *not* a distribution.

Kickstart.nvim is a template for your own configuration.
  The goal is that you can read every line of code, top-to-bottom, understand
  what your configuration is doing, and modify it to suit your needs.

  Once you've done that, you should start exploring, configuring and tinkering to
  explore Neovim!

  If you don't know anything about Lua, I recommend taking some time to read through
  a guide. One possible example:
  - https://learnxinyminutes.com/docs/lua/


  And then you can explore or search through `:help lua-guide`
  - https://neovim.io/doc/user/lua-guide.html


Kickstart Guide:

I have left several `:help X` comments throughout the init.lua
You should run that command and read that help section for more information.

In addition, I have some `NOTE:` items throughout the file.
These are for you, the reader to help understand what is happening. Feel free to delete
them once you know what you're doing, but they should serve as a guide for when you
are first encountering a few different constructs in your nvim config.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now :)
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
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

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration

  --require 'kickstart.plugins.git',

  -- Detect tabstop and shiftwidth automatically
  --'tpope/vim-sleuth',

  require 'kickstart.plugins.autocomplete',


  --TODO
  require 'kickstart.plugins.whichkey',

  --TODO
  --require 'kickstart.plugins.git-signs',

  require 'kickstart.plugins.theme',

  --TODO
  --require 'kickstart.plugins.lualine',

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
  --require 'kickstart.plugins.comment',

  require 'kickstart.plugins.fuzzyfinder',
  --decided to go with the new mappings
  --require 'custom.plugins.telescope',

  require 'kickstart.plugins.treesitter',

  -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
  --       These are some example plugins that I've included in the kickstart repository.
  --       Uncomment any of the lines below to enable them.
  require 'kickstart.plugins.autoformat',
  --require 'kickstart.plugins.debug',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
  --    up-to-date with whatever is in the kickstart repo.
  --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --
  --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  -- { import = 'custom.plugins' },
  -- this is where I put some personal plugins
  require 'custom.plugins.general',
  require 'custom.plugins.obsidian',
  require 'custom.plugins.toggleterm'
}, {})

--TODO
--require 'custom.configs.options'

-- [[ Basic Keymaps ]]
-- my own mappings :>
require 'custom.configs.mappings'
--TODO
--require 'kickstart.configs.mappings'

require 'kickstart.configs.telescope'

require 'kickstart.configs.treesitter'

-- these two go together
require 'kickstart.configs.lsp'
require 'kickstart.configs.nvim-cmp'


-- [[ My own stuff]]
require 'custom.configs.harpoon'
require 'custom.configs.nvim-tree'
require 'custom.configs.toggleterm'
require 'custom.configs.obisidian'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
