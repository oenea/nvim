-- Set <space> as the leader key   
-- See `:help mapleader`
-- Note: Must happen before plugins are required (otherwise wrong leader
--       will be used)
vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' ' 
-- Keymaps for better default experience
local map = vim.keymap.set

map({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Hightlight on the yank 
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextyankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next message' })
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Open floating diagnostic message' })
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Open diagnostic list'})

-- When going up and down center the view to avoid confusion
map('n','<C-u>', '<C-u>zz')
map('n','<C-d>', '<C-d>zz')

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.guicursor = "n-v-c:block,i-ci-ve:block,r-cr:underline,o:hor20"

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 1

vim.opt.colorcolumn = '80'

-- Experimental
-- Sync clipboard between OS and neovim
--vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Enable mouse mode
vim.o.mouse = 'a'
 
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrese update time
vim.updatetime = 250
vim.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.g.python_host_skip_check = 1
vim.g.python3_host_skip_check = 1
vim.g.python_host_prog = '/usr/local/bin/python'
vim.g.python3_host_prog = '/usr/local/bin/python3'
