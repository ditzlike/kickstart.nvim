return {
    'folke/snacks.nvim',
    event = 'VeryLazy',
    priority = 1000,
    opts = {
        bigfile = {},
        indent = {enabled = false },
        --indent = { char = "▎" },
        --indent = {
        --    indent = {
        --        char = '▎',
        --        hl = {
        --            'EndOfBuffer',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --            'IblIndent',
        --        },
        --    },
        --    animate = { enabled = false },
        --    scope = { enabled = false },
        --},
        input = {},
        notifier = {},
        picker = {},
    },
    keys = {
        -- finders
        { '<leader><space>', function() Snacks.picker.smart() end,               desc = 'Smart File Picker' },
        { '<leader>sf', function() Snacks.picker.files() end,               desc = 'File Picker' },
        { '<leader>sg', function() Snacks.picker.grep() end,                desc = 'Grep Picker' },
        { '<leader>si', function() Snacks.picker.git_files() end,           desc = 'Git Files Picker' },
        { "<leader>s:", function() Snacks.picker.command_history() end, desc = "Command History" },
        -- lsp
        { 'gd',         function() Snacks.picker.lsp_definitions() end,     desc = 'Go To Definitions' },
        { "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
        { 'gr',         function() Snacks.picker.lsp_references() end,      nowait = true,                 desc = 'Go To References' },
        { 'gi',         function() Snacks.picker.lsp_implementations() end, desc = 'Go To Implementations' },
        { "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
        -- search
        { '<leader>s"', function() Snacks.picker.registers() end, desc = "Registers" },
        { "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
        { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end, desc = "Buffer Diagnostics" },
        { "<leader>sM", function() Snacks.picker.marks() end, desc = "Marks" },
        --{ '<leader>sr', function() Snacks.picker.search_history() end, desc = "Search History Resume" }, does the / search history
        { "<leader>sr", function() Snacks.picker.resume() end, desc = "Resume" },
    },
}
