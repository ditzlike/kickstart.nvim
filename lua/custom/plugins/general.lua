-- general plugins
return {
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
  },
  'tmsvg/pear-tree',
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }
}
