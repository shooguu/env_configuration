---------------------------------------------------------------
-- => Gitblame
---------------------------------------------------------------
-- Disable git blame on startup
vim.g.gitblame_enabled = 0

-- Toggle git blame
vim.keymap.set('n', '<Leader>gb', '<cmd>GitBlameToggle<cr>', {})
