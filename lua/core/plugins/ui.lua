return {
     {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        config = true,
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Open NeoTree", mode = {"n", "v"} }
        },
    },
    {
        'nvim-lualine/lualine.nvim',
	    event = { "VeryLazy" },
        config = function ()
            require("lualine").setup({
                options = {
                    component_separators = { left = '|', right = '|'},
                    section_separators = { left = '', right = ''},
                },
                sections = {
                    lualine_a = {'filetype'},
                    lualine_b = {'branch', 'diff', 'diagnostics'},
                    lualine_c = {''},
                    lualine_x = {},
                    --lualine_y = {'progress'},
                    --lualine_z = {'location'}
                },
            })
        end
    },
    {
        "akinsho/bufferline.nvim",
	    event = { "VeryLazy" },
        config = function ()
            require("bufferline").setup{
                options = {
        -- 使用 nvim 内置lsp
                    diagnostics = "nvim_lsp",
        -- 左侧让出 nvim-tree 的位置
                    offsets = {{
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        text_align = "center"
                    }}
                }
            }
        end
    },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        event = "VeryLazy",
    },
    { 
        "lukas-reineke/indent-blankline.nvim",
        event = { "VeryLazy" },
        config = true,
        lazy = true
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            -- your configuration comes here
                -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },

    {
        "SmiteshP/nvim-navic",
        event = "VeryLazy",
    },
    {
        "goolord/alpha-nvim",
        lazy = true,
        event = "BufWinEnter",
        config = require("core.plugins.alpha.dash")
    }
}
