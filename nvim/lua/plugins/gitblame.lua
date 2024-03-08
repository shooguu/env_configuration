---------------------------------------------------------------
-- => Gitblame
---------------------------------------------------------------
-- Disable git blame on startup
require('gitblame').setup {
    enabled = false,
}

-- Toggle git blame
vim.keymap.set('n', '<Leader>gb', '<cmd>GitBlameToggle<cr>', {})
