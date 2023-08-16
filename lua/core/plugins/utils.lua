return {
    lazy = {
       opts = {
            ui = {
                border = "rounded"
            },
            install = {
                colorscheme = {"dracula"}
            }
       } 
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = true,
        event = { "VeryLazy" }, 
        main = "nvim-treesitter.configs",
        build = ":TSUpdate",
        opts = {
            ensure_installed = "cpp", "python",
            highlight = {
                enable = true,
            },
        },
    },
    {
        'windwp/nvim-autopairs',
        event = { "VeryLazy" },
        config = true
    },
    {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = { options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" } },
    -- stylua: ignore
        keys = {
            { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
            { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
            { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
        },
    },
    {   
        "CRAG666/code_runner.nvim", 
        optional = true,
        config = function()
            require("code_runner").setup()({
                filetype = {
                    python = "python3 -u",
                },
            })
        end,
        event = {"VeryLazy"}
    }, 
}
