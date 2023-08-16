return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { '<leader>?',       "<cmd>lua require('telescope.builtin').oldfiles()<cr>" },
            { "<leader><space>", "<cmd>lua require('telescope.builtin').buffers({ sort_mru = true })<cr>" },
            { "<leader>/",
                function()
                -- You can pass additional configuration to telescope to change theme, layout, etc.
                    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                        winblend = 10,
                        previewer = false,
                    })
                end
            },
            { '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>" },
            { '<leader>fg', "<cmd>lua require('telescope.builtin').live_grep()<cr>" },
            { '<leader>fh', "<cmd>lua require('telescope.builtin').help_tags()<cr>" },
            { '<leader>fp', "<cmd>lua require('telescope.builtin').builtin()<cr>" },
            { '<leader>fm', "<cmd>lua require('telescope.builtin').marks()<cr>" },
            { '<leader>qf', "<cmd>lua require('telescope.builtin').quickfix()<cr>" },
            { '<leader>km', "<cmd>lua require('telescope.builtin').keymaps()<cr>" },
            { '<c-p>',      "<cmd>lua require('telescope.builtin').commands()<cr>" },
        },         
        lazy = true,
        config = true,
        cmd = "Telescope"
    },
}
