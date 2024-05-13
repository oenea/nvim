return {
    -- Theme
    'catppuccin/nvim', name = 'catppuccin', priority = 1000,

    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- Fuzzy Finder Algorithm which requires local dependencies to be built.
            -- Only load if `make` is available. Make sure you have the system
            -- requirements installed.
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
    },

    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        -- even = 'VeryLazy',
        --[[init = function() 
            vim.o.timeout = true
            vim.o.timeoutlen = 50
        end,]]--
        --[[dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },]]--
        build = ':TSUpdate',
    },

    --'rush-rs/tree-sitter-asm',

    --'nvim-orgmode/orgmode',
    --      dependencies = { 'nvim-treesitter/nvim-treesitter' } --, lazy = true },
    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
        end
    },

    --[[{
	      'stevearc/conform.nvim',
        opts = {},
    }]]--

}
