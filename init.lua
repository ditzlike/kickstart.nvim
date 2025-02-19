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
  require 'plugins.colourscheme',
  require 'plugins.fuzzyfinder',
  require 'plugins.harpoon',
  require 'plugins.hop',
  require 'plugins.lsp',
  require 'plugins.nvim-tree',
  require 'plugins.treesitter',
  require 'plugins.obsidian',
}, {})
-- Wenn fertig: require alle plugins
require 'mappings'
require 'settings'
require 'style'
