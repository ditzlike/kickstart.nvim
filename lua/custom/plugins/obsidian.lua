return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '~/vaults/personal',
      },
      {
        name = 'work',
        path = '~/vaults/work',
      },
    },

    -- see below for full list of options 👇
  },
}
--return {
--  'ada0l/obsidian',
--  keys = {
--    {
--      '<leader>ov',
--      function()
--        Obsidian.select_vault()
--      end,
--      desc = 'Select Obsidian vault',
--    },
--    {
--      '<leader>oo',
--      function()
--        Obsidian.get_current_vault(function()
--          Obsidian.cd_vault()
--        end)
--      end,
--      desc = 'Open Obsidian directory',
--    },
--    {
--      '<leader>ot',
--      function()
--        Obsidian.get_current_vault(function()
--          Obsidian.open_today()
--        end)
--      end,
--      desc = 'Open today',
--    },
--    {
--      '<leader>od',
--      function()
--        Obsidian.get_current_vault(function()
--          vim.ui.input({ prompt = 'Write shift in days: ' }, function(input_shift)
--            local shift = tonumber(input_shift) * 60 * 60 * 24
--            Obsidian.open_today(shift)
--          end)
--        end)
--      end,
--      desc = 'Open daily node with shift',
--    },
--    {
--      '<leader>on',
--      function()
--        Obsidian.get_current_vault(function()
--          vim.ui.input({ prompt = 'Write name of new note: ' }, function(name)
--            Obsidian.new_note(name)
--          end)
--        end)
--      end,
--      desc = 'New note',
--    },
--    {
--      '<leader>oi',
--      function()
--        Obsidian.get_current_vault(function()
--          Obsidian.select_template('telescope')
--        end)
--      end,
--      desc = 'Insert template',
--    },
--    {
--      '<leader>os',
--      function()
--        Obsidian.get_current_vault(function()
--          Obsidian.search_note('telescope')
--        end)
--      end,
--      desc = 'Search note',
--    },
--    {
--      '<leader>ob',
--      function()
--        Obsidian.get_current_vault(function()
--          Obsidian.select_backlinks('telescope')
--        end)
--      end,
--      desc = 'Select backlink',
--    },
--    {
--      '<leader>og',
--      function()
--        Obsidian.get_current_vault(function()
--          Obsidian.go_to()
--        end)
--      end,
--      desc = 'Go to file under cursor',
--    },
--    {
--      '<leader>or',
--      function()
--        Obsidian.get_current_vault(function()
--          vim.ui.input({ prompt = 'Rename file to' }, function(name)
--            Obsidian.rename(name)
--          end)
--        end)
--      end,
--      desc = 'Rename file with updating links',
--    },
--    {
--      'gf',
--      function()
--        if Obsidian.found_wikilink_under_cursor() ~= nil then
--          return '<cmd>lua Obsidian.get_current_vault(function() Obsidian.go_to() end)<CR>'
--        else
--          return 'gf'
--        end
--      end,
--      noremap = false,
--      expr = true
--    }
--  },
--  opts = function()
--    ---@param filename string
--    ---@return string
--    local transformator = function(filename)
--      if filename ~= nil and filename ~= '' then
--        return filename
--      end
--      return string.format('%d', os.time())
--    end
--    return {
--      vaults = {
--        {
--          dir = '~/Documents/Knowledge/',
--          templates = {
--            dir = 'templates/',
--            date = '%Y-%d-%m',
--            time = '%Y-%d-%m',
--          },
--          note = {
--            dir = '',
--            transformator = transformator,
--          },
--        },
--        {
--          dir = '~/Documents/SyncObsidian/',
--          daily = {
--            dir = '01.daily/',
--            format = '%Y-%m-%d',
--          },
--          templates = {
--            dir = 'templates/',
--            date = '%Y-%d-%m',
--            time = '%Y-%d-%m',
--          },
--          note = {
--            dir = 'notes/',
--            transformator = transformator,
--          },
--        }
--      }
--    }
--  end
--}
