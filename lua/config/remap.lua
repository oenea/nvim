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
