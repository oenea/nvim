-- [[ Configure Treesitter ]]
-- See: `:help nvim-treesitter`
-- Defer Treesitter setup after first render to improve startup time of 
-- 'nvim {filename}'
vim.defer_fn(function()
    --[[ require('nvim-treesitter.parsers').get_parser_configs().asm = {
        install_info = {
            url = 'https://github.com/rush-rs/tree-sitter-asm.git',
            files = { 'src/parser.c' },
            branch = 'main',
        },
    },]]--

    require('nvim-treesitter.configs').setup {
        ensure_installed = { 
            'ada',
            'angular',
            'asm',
            'astro',
            'bash',
            'c',
            'c_sharp',
            'clojure',
            'cmake',
            'comment',
            'commonlisp',
            'cpp', 
            'css',
            'csv', 
            'cuda',
            'cue',
            'd',
            'dart',
            'devicetree',
            'diff',
            'disassembly',
            'djot',
            'dockerfile',
            'dot',
            'doxygen',
            'elixir',
            'fish',
            'fsh',
            'func',
            'fusion',
            'gdscript',
            'gdshader',
            --'gdsource',
            'git_config',
            'git_rebase', 
            'gitattributes',
            'gitcommit',
            'gitignore',
            'gleam',
            'glsl',
            'gnuplot',
            'go',
            'gpg',
            'graphql',
            'haskell',
            'haskell_persistent', 
            'hlsl',
            'html', 
            'http', 
            'hurl',
            'java',
            'javascript',
            'jq',
            'jsdoc',
            'json',
            'json5',
            'kconfig',
            'kdl',
            'kotlin',
            'koto',
            'latex',
            'linkerscript',
            'llvm',
            'lua',
            'luadoc',
            'luap',
            'make',
            'markdown',
            'markdown_inline',
            'matlab',
            'meson',
            'meson',
            'nasm',
            'ninja',
            'nix',
            'nix', 
            'objc',
            'objc',
            'objdump',
            'ocaml',
            'ocaml_interface',
            'pascal',
            'passwd',
            'perl',
            'php',
            'phpdoc',
            'python',
            'query',
            'r',
            'regex',
            'ruby',
            'rust',
            'sql',
            'swift',
            'tsv',
            'tsx',
            'typescript',
            'v',
            'vala',
            'verilog',
            'vim',
            'vimdoc',
            'vue',
            'vue',
            'xcompose',
            'xml',
            'yaml',
            'zathurarc',
            'zig',
        },
        
        auto_install = true,
        indent = { enable = true },
        sync_install = true,

        hightlight = {
            enable = true,
            -- disable = {},
            additional_vim_regex_highlighting = true,
        },
        
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<c-space>',
                node_incremental = '<c-space>',
                scope_incremental = false, 
                node_decremental = '<M-space>',
            },
        },

        matchup = { enable = true },
        
        autotag = { enable = true },

        textobjects = {
            select = {
                enable = true,
                lookhead = true, -- Automatically jump forward to textobj, similar to targets.vim
                keymaps = {
                    -- You can use the capture groups defined in textobjects.scm
                    ['aa'] = '@parameter.outer',
                    ['ia'] = '@parameter.inner',
                    ['af'] = '@function.outer',
                    ['if'] = '@function.inner',
                    ['ac'] = '@class.outer',
                    ['ic'] = '@class.inner',
                },
            },
        },

        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                [']m'] = '@function.outer',
                [']]'] = '@class.outer',
            },
            goto_next_end = {
                [']M'] = '@function.outer',
                [']['] = '@class.outer',
            },
            goto_previous_start = {
                ['[m'] = '@function.outer',
                ['[['] = '@class.outer',
            },
            goto_previous_end = {
                ['[M'] = '@function.outer',
                ['[]'] = '@class.outer',
            },
            swap = {
                enable = true, 
                sway_next = {
                    ['<leader>a'] = '@parameter.inner',
                },
                swap_previous = {
                    ['<leader>A'] = '@parameter.inner',
                },
            },
        },
    }
end, 0)