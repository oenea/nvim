-- Set <space> as the leader key   
-- See `:help mapleader`
-- Note: Must happen before plugins are required (otherwise wrong leader
--       will be used)
vim.g.mapleader = ' ' 
vim.g.maplocalleader = ' ' 

-- Lazy setup
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('config.plugins')

require('plugins.catppuccin')
require('config.set')
require('config.remap')

require('plugins.treesitter')
require('plugins.telescope')
require('plugins.which-key')
--require('plugins.conform')
--require('plugins.orgmode')

