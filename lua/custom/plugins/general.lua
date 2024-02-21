-- general plugins
return {
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
  },
 {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
},
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }
}
