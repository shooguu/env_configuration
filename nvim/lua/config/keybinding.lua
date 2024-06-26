---------------------------------------------------------------
-- => REMAP KEYS
---------------------------------------------------------------
-- Remap space to be no-highlight
vim.api.nvim_set_keymap("n", "<space><space>", ":nohlsearch<cr>", {noremap = true})

-- No magic search
vim.api.nvim_set_keymap("n", "/", "/\\V", {noremap = true})
vim.api.nvim_set_keymap("n", "?", "/\\V", {noremap = true})
vim.api.nvim_set_keymap("v", "/", "/\\V", {noremap = true})
vim.api.nvim_set_keymap("v", "?", "/\\V", {noremap = true})

-- Put <enter> to work too! Otherwise <enter> moves to the next line, which we can
-- already do by pressing the <j> key, which is a waste of keys!
-- Be useful <enter> key!:
vim.cmd [[nnoremap <silent> <cr> :let searchTerm = '\v<'.expand("<cword>").'>' <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr> b]]

-- Keybindings to copy paths and filename
vim.cmd("command! CRP call setreg('+', expand('%'))")
vim.cmd("command! CAP call setreg('+', expand('%:p'))")
vim.cmd("command! CFN call setreg('+', expand('%:t'))")

-- Modify minisnip keymapping
vim.cmd("let g:miniSnip_trigger = '<c-s>'")

-- Open file explorer
vim.api.nvim_set_keymap("n", "<leader>fe", "<cmd>Ex<cr>", {noremap = true})

-- Discard copy to void register when pasting
vim.api.nvim_set_keymap("x", "<leader>p", "\"_dP", {noremap = true})

-- Open in terminal in tab
vim.api.nvim_set_keymap("n", "<leader>s", "<cmd>terminal<cr>", {noremap = true})
