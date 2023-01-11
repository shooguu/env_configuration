---------------------------------------------------------------
-- => REMAP KEYS
---------------------------------------------------------------
-- Block mode
-- vim.api.nvim_set_keymap("n", "<Leader>q", "<c-v>", {noremap = true})

-- Clear without storing to buffer, Visual mode only
vim.api.nvim_set_keymap("x", "<Leader>x", '"_d', {noremap = true})

-- Remap space to be no-highlight
vim.api.nvim_set_keymap("n", "<Space>", ":nohlsearch<Bar>:echo<cr>", {noremap = true})

-- No magic search
vim.api.nvim_set_keymap("n", "/", "/\\V", {noremap = true})
vim.api.nvim_set_keymap("n", "?", "/\\V", {noremap = true})
vim.api.nvim_set_keymap("v", "/", "/\\V", {noremap = true})
vim.api.nvim_set_keymap("v", "?", "/\\V", {noremap = true})

-- Easily chage buffers
-- vim.api.nvim_set_keymap("n", "<leader>b", ":ls<CR>:b<Space>", {noremap = true})
