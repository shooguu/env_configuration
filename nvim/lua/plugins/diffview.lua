---------------------------------------------------------------
-- => NVIMDiff
---------------------------------------------------------------
--require('diffview').setup {
--    use_icons = false
--}

-- Diffview open keymap
vim.keymap.set('n', '<Leader>do', '<cmd>DiffviewOpen<cr>', {})

-- Diffview close keymap
vim.keymap.set('n', '<Leader>dc', '<cmd>DiffviewClose<cr>', {})
